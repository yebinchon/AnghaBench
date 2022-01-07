
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; } ;
struct msghdr {unsigned long msg_iovlen; int msg_flags; struct iovec* msg_iov; scalar_t__ msg_controllen; int * msg_control; scalar_t__ msg_namelen; int * msg_name; } ;
struct kiocb {int dummy; } ;
struct iovec {scalar_t__ iov_len; } ;
struct file {int f_flags; struct socket* private_data; } ;
typedef int ssize_t ;


 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_SEQPACKET ;
 int __sock_sendmsg (struct kiocb*,struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static ssize_t do_sock_write(struct msghdr *msg, struct kiocb *iocb,
   struct file *file, const struct iovec *iov,
   unsigned long nr_segs)
{
 struct socket *sock = file->private_data;
 size_t size = 0;
 int i;

 for (i = 0; i < nr_segs; i++)
  size += iov[i].iov_len;

 msg->msg_name = ((void*)0);
 msg->msg_namelen = 0;
 msg->msg_control = ((void*)0);
 msg->msg_controllen = 0;
 msg->msg_iov = (struct iovec *)iov;
 msg->msg_iovlen = nr_segs;
 msg->msg_flags = (file->f_flags & O_NONBLOCK) ? MSG_DONTWAIT : 0;
 if (sock->type == SOCK_SEQPACKET)
  msg->msg_flags |= MSG_EOR;

 return __sock_sendmsg(iocb, sock, msg, size);
}
