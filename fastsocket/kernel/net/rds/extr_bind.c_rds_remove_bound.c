
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {scalar_t__ rs_bound_addr; int rs_bound_node; int rs_bound_port; } ;


 int hlist_del_init_rcu (int *) ;
 int ntohs (int ) ;
 int rds_bind_lock ;
 int rds_sock_put (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_sock*,scalar_t__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rds_remove_bound(struct rds_sock *rs)
{
 unsigned long flags;

 spin_lock_irqsave(&rds_bind_lock, flags);

 if (rs->rs_bound_addr) {
  rdsdebug("rs %p unbinding from %pI4:%d\n",
    rs, &rs->rs_bound_addr,
    ntohs(rs->rs_bound_port));

  hlist_del_init_rcu(&rs->rs_bound_node);
  rds_sock_put(rs);
  rs->rs_bound_addr = 0;
 }

 spin_unlock_irqrestore(&rds_bind_lock, flags);
}
