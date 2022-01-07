
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {size_t msg_iovlen; struct iovec* msg_iov; } ;
struct kvec {int dummy; } ;
struct iovec {int dummy; } ;
typedef int mm_segment_t ;


 int EINVAL ;
 int EPIPE ;
 int ML_ERROR ;
 int get_ds () ;
 int get_fs () ;
 int mlog (int ,char*,int,...) ;
 int set_fs (int ) ;
 int sock_sendmsg (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int o2net_send_tcp_msg(struct socket *sock, struct kvec *vec,
         size_t veclen, size_t total)
{
 int ret;
 mm_segment_t oldfs;
 struct msghdr msg = {
  .msg_iov = (struct iovec *)vec,
  .msg_iovlen = veclen,
 };

 if (sock == ((void*)0)) {
  ret = -EINVAL;
  goto out;
 }

 oldfs = get_fs();
 set_fs(get_ds());
 ret = sock_sendmsg(sock, &msg, total);
 set_fs(oldfs);
 if (ret != total) {
  mlog(ML_ERROR, "sendmsg returned %d instead of %zu\n", ret,
       total);
  if (ret >= 0)
   ret = -EPIPE;
  goto out;
 }

 ret = 0;
out:
 if (ret < 0)
  mlog(0, "returning error: %d\n", ret);
 return ret;
}
