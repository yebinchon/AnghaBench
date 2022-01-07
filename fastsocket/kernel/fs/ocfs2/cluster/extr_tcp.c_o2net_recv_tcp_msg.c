
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_flags; struct iovec* msg_iov; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
struct iovec {int dummy; } ;
typedef int mm_segment_t ;


 int MSG_DONTWAIT ;
 int get_ds () ;
 int get_fs () ;
 int set_fs (int ) ;
 int sock_recvmsg (struct socket*,struct msghdr*,size_t,int ) ;

__attribute__((used)) static int o2net_recv_tcp_msg(struct socket *sock, void *data, size_t len)
{
 int ret;
 mm_segment_t oldfs;
 struct kvec vec = {
  .iov_len = len,
  .iov_base = data,
 };
 struct msghdr msg = {
  .msg_iovlen = 1,
  .msg_iov = (struct iovec *)&vec,
         .msg_flags = MSG_DONTWAIT,
 };

 oldfs = get_fs();
 set_fs(get_ds());
 ret = sock_recvmsg(sock, &msg, len, msg.msg_flags);
 set_fs(oldfs);

 return ret;
}
