
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_flags; scalar_t__ msg_controllen; int * msg_control; scalar_t__ msg_namelen; int * msg_name; struct iovec* msg_iov; } ;
struct kvec {unsigned int iov_len; void* iov_base; } ;
struct iovec {int dummy; } ;


 int MSG_DONTWAIT ;
 int MSG_WAITALL ;
 int kernel_recvmsg (struct socket*,struct msghdr*,struct kvec*,int,unsigned int,int ) ;

__attribute__((used)) static int dst_data_recv_header(struct socket *sock,
  void *data, unsigned int size, int block)
{
 struct msghdr msg;
 struct kvec iov;
 int err;

 iov.iov_base = data;
 iov.iov_len = size;

 msg.msg_iov = (struct iovec *)&iov;
 msg.msg_iovlen = 1;
 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = (block)?MSG_WAITALL:MSG_DONTWAIT;

 err = kernel_recvmsg(sock, &msg, &iov, 1, iov.iov_len,
   msg.msg_flags);
 if (err != size)
  return -1;

 return 0;
}
