
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_controllen; int * msg_control; } ;
struct kvec {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int ssocket; } ;


 scalar_t__ CifsExiting ;
 scalar_t__ CifsNeedReconnect ;
 int EAGAIN ;
 int EINTR ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int ESHUTDOWN ;
 int cFYI (int,char*,unsigned int,int) ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 struct kvec* get_server_iovec (struct TCP_Server_Info*,unsigned int) ;
 int kernel_recvmsg (int ,struct msghdr*,struct kvec*,unsigned int,unsigned int,int ) ;
 unsigned int kvec_array_init (struct kvec*,struct kvec*,unsigned int,int) ;
 scalar_t__ server_unresponsive (struct TCP_Server_Info*) ;
 int usleep_range (int,int) ;

int
cifs_readv_from_socket(struct TCP_Server_Info *server, struct kvec *iov_orig,
         unsigned int nr_segs, unsigned int to_read)
{
 int length = 0;
 int total_read;
 unsigned int segs;
 struct msghdr smb_msg;
 struct kvec *iov;

 iov = get_server_iovec(server, nr_segs);
 if (!iov)
  return -ENOMEM;

 smb_msg.msg_control = ((void*)0);
 smb_msg.msg_controllen = 0;

 for (total_read = 0; to_read; total_read += length, to_read -= length) {
  if (server_unresponsive(server)) {
   total_read = -EAGAIN;
   break;
  }

  segs = kvec_array_init(iov, iov_orig, nr_segs, total_read);

  length = kernel_recvmsg(server->ssocket, &smb_msg,
     iov, segs, to_read, 0);

  if (server->tcpStatus == CifsExiting) {
   total_read = -ESHUTDOWN;
   break;
  } else if (server->tcpStatus == CifsNeedReconnect) {
   cifs_reconnect(server);
   total_read = -EAGAIN;
   break;
  } else if (length == -ERESTARTSYS ||
      length == -EAGAIN ||
      length == -EINTR) {





   usleep_range(1000, 2000);
   length = 0;
   continue;
  } else if (length <= 0) {
   cFYI(1, "Received no data or error: expecting %d "
    "got %d", to_read, length);
   cifs_reconnect(server);
   total_read = -EAGAIN;
   break;
  }
 }
 return total_read;
}
