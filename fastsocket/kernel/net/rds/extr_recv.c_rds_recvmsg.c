
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {int sin_zero; TYPE_4__ sin_addr; int sin_port; int sin_family; } ;
struct sock {int * sk_sleep; } ;
struct rds_sock {scalar_t__ rs_cong_notify; int rs_notify_queue; } ;
struct TYPE_7__ {int h_sport; int h_len; } ;
struct rds_incoming {int i_saddr; TYPE_3__ i_hdr; TYPE_2__* i_conn; } ;
struct msghdr {int msg_namelen; int msg_flags; scalar_t__ msg_name; int msg_iov; } ;
struct kiocb {int dummy; } ;
struct TYPE_6__ {TYPE_1__* c_trans; int c_faddr; } ;
struct TYPE_5__ {int (* inc_copy_to_user ) (struct rds_incoming*,int ,size_t) ;} ;


 int AF_INET ;
 int EAGAIN ;
 int EFAULT ;
 int ETIMEDOUT ;
 long MAX_SCHEDULE_TIMEOUT ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int be32_to_cpu (int ) ;
 int list_empty (int *) ;
 int memset (int ,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ rds_cmsg_recv (struct rds_incoming*,struct msghdr*) ;
 int rds_inc_put (struct rds_incoming*) ;
 scalar_t__ rds_next_incoming (struct rds_sock*,struct rds_incoming**) ;
 int rds_notify_cong (struct rds_sock*,struct msghdr*) ;
 int rds_notify_queue_get (struct rds_sock*,struct msghdr*) ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;
 int rds_stats_inc (int ) ;
 int rds_still_queued (struct rds_sock*,struct rds_incoming*,int) ;
 int rdsdebug (char*,...) ;
 int s_recv_deliver_raced ;
 int s_recv_delivered ;
 long sock_rcvtimeo (struct sock*,int) ;
 int stub1 (struct rds_incoming*,int ,size_t) ;
 long wait_event_interruptible_timeout (int ,int,long) ;

int rds_recvmsg(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
  size_t size, int msg_flags)
{
 struct sock *sk = sock->sk;
 struct rds_sock *rs = rds_sk_to_rs(sk);
 long timeo;
 int ret = 0, nonblock = msg_flags & MSG_DONTWAIT;
 struct sockaddr_in *sin;
 struct rds_incoming *inc = ((void*)0);


 timeo = sock_rcvtimeo(sk, nonblock);

 rdsdebug("size %zu flags 0x%x timeo %ld\n", size, msg_flags, timeo);

 msg->msg_namelen = 0;

 if (msg_flags & MSG_OOB)
  goto out;

 while (1) {

  if (!list_empty(&rs->rs_notify_queue)) {
   ret = rds_notify_queue_get(rs, msg);
   break;
  }

  if (rs->rs_cong_notify) {
   ret = rds_notify_cong(rs, msg);
   break;
  }

  if (!rds_next_incoming(rs, &inc)) {
   if (nonblock) {
    ret = -EAGAIN;
    break;
   }

   timeo = wait_event_interruptible_timeout(*sk->sk_sleep,
      (!list_empty(&rs->rs_notify_queue)
      || rs->rs_cong_notify
      || rds_next_incoming(rs, &inc)),
      timeo);
   rdsdebug("recvmsg woke inc %p timeo %ld\n", inc,
     timeo);
   if (timeo > 0 || timeo == MAX_SCHEDULE_TIMEOUT)
    continue;

   ret = timeo;
   if (ret == 0)
    ret = -ETIMEDOUT;
   break;
  }

  rdsdebug("copying inc %p from %pI4:%u to user\n", inc,
    &inc->i_conn->c_faddr,
    ntohs(inc->i_hdr.h_sport));
  ret = inc->i_conn->c_trans->inc_copy_to_user(inc, msg->msg_iov,
            size);
  if (ret < 0)
   break;






  if (!rds_still_queued(rs, inc, !(msg_flags & MSG_PEEK))) {
   rds_inc_put(inc);
   inc = ((void*)0);
   rds_stats_inc(s_recv_deliver_raced);
   continue;
  }

  if (ret < be32_to_cpu(inc->i_hdr.h_len)) {
   if (msg_flags & MSG_TRUNC)
    ret = be32_to_cpu(inc->i_hdr.h_len);
   msg->msg_flags |= MSG_TRUNC;
  }

  if (rds_cmsg_recv(inc, msg)) {
   ret = -EFAULT;
   goto out;
  }

  rds_stats_inc(s_recv_delivered);

  sin = (struct sockaddr_in *)msg->msg_name;
  if (sin) {
   sin->sin_family = AF_INET;
   sin->sin_port = inc->i_hdr.h_sport;
   sin->sin_addr.s_addr = inc->i_saddr;
   memset(sin->sin_zero, 0, sizeof(sin->sin_zero));
   msg->msg_namelen = sizeof(*sin);
  }
  break;
 }

 if (inc)
  rds_inc_put(inc);

out:
 return ret;
}
