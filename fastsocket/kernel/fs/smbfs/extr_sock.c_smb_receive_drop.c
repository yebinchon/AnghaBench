
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct smb_sb_info {int smb_read; scalar_t__ smb_len; int rstate; int header; } ;
struct msghdr {unsigned int msg_flags; int * msg_control; scalar_t__ msg_namelen; int * msg_name; } ;
struct kvec {int iov_len; int iov_base; } ;
struct TYPE_2__ {scalar_t__ sk_state; } ;


 int EIO ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_NOSIGNAL ;
 int PAGE_SIZE ;
 int SMB_RECV_END ;
 scalar_t__ TCP_ESTABLISHED ;
 int VERBOSE (char*,int) ;
 int drop_buffer ;
 int kernel_recvmsg (struct socket*,struct msghdr*,struct kvec*,int,int,unsigned int) ;
 struct socket* server_sock (struct smb_sb_info*) ;
 int smb_len (int ) ;

int
smb_receive_drop(struct smb_sb_info *server)
{
 struct socket *sock;
 unsigned int flags;
 struct kvec iov;
 struct msghdr msg;
 int rlen = smb_len(server->header) - server->smb_read + 4;
 int result = -EIO;

 if (rlen > PAGE_SIZE)
  rlen = PAGE_SIZE;

 sock = server_sock(server);
 if (!sock)
  goto out;
 if (sock->sk->sk_state != TCP_ESTABLISHED)
  goto out;

 flags = MSG_DONTWAIT | MSG_NOSIGNAL;
 iov.iov_base = drop_buffer;
 iov.iov_len = PAGE_SIZE;
 msg.msg_flags = flags;
 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 msg.msg_control = ((void*)0);

 result = kernel_recvmsg(sock, &msg, &iov, 1, rlen, flags);

 VERBOSE("read: %d\n", result);
 if (result < 0) {
  VERBOSE("receive error: %d\n", result);
  goto out;
 }
 server->smb_read += result;

 if (server->smb_read >= server->smb_len)
  server->rstate = SMB_RECV_END;

out:
 return result;
}
