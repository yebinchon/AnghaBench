
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rds_sock {int rs_recv_lock; } ;
struct TYPE_4__ {int h_dport; int h_len; } ;
struct rds_incoming {int i_item; TYPE_2__ i_hdr; TYPE_1__* i_conn; } ;
struct TYPE_3__ {int c_lcong; } ;


 int be32_to_cpu (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int rds_inc_put (struct rds_incoming*) ;
 int rds_recv_rcvbuf_delta (struct rds_sock*,struct sock*,int ,int ,int ) ;
 struct sock* rds_rs_to_sk (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_incoming*,struct rds_sock*,int,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rds_still_queued(struct rds_sock *rs, struct rds_incoming *inc,
       int drop)
{
 struct sock *sk = rds_rs_to_sk(rs);
 int ret = 0;
 unsigned long flags;

 write_lock_irqsave(&rs->rs_recv_lock, flags);
 if (!list_empty(&inc->i_item)) {
  ret = 1;
  if (drop) {

   rds_recv_rcvbuf_delta(rs, sk, inc->i_conn->c_lcong,
           -be32_to_cpu(inc->i_hdr.h_len),
           inc->i_hdr.h_dport);
   list_del_init(&inc->i_item);
   rds_inc_put(inc);
  }
 }
 write_unlock_irqrestore(&rs->rs_recv_lock, flags);

 rdsdebug("inc %p rs %p still %d dropped %d\n", inc, rs, ret, drop);
 return ret;
}
