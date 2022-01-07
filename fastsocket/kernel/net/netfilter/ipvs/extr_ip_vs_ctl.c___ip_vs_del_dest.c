
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_dest {int refcnt; int n_list; int port; int addr; int af; TYPE_1__* svc; int stats; } ;
struct TYPE_2__ {int refcnt; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ) ;
 int __ip_vs_rs_lock ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int ip_vs_dest_trash ;
 int ip_vs_dst_reset (struct ip_vs_dest*) ;
 int ip_vs_kill_estimator (int *) ;
 int ip_vs_rs_unhash (struct ip_vs_dest*) ;
 int kfree (struct ip_vs_dest*) ;
 int list_add (int *,int *) ;
 int ntohs (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void __ip_vs_del_dest(struct ip_vs_dest *dest)
{
 ip_vs_kill_estimator(&dest->stats);




 write_lock_bh(&__ip_vs_rs_lock);
 ip_vs_rs_unhash(dest);
 write_unlock_bh(&__ip_vs_rs_lock);






 if (atomic_dec_and_test(&dest->refcnt)) {
  ip_vs_dst_reset(dest);





  atomic_dec(&dest->svc->refcnt);
  kfree(dest);
 } else {
  IP_VS_DBG_BUF(3, "Moving dest %s:%u into trash, "
         "dest->refcnt=%d\n",
         IP_VS_DBG_ADDR(dest->af, &dest->addr),
         ntohs(dest->port),
         atomic_read(&dest->refcnt));
  list_add(&dest->n_list, &ip_vs_dest_trash);
  atomic_inc(&dest->refcnt);
 }
}
