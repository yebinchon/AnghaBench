
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_common {struct tcf_common* tcfc_next; } ;
struct tcf_police {scalar_t__ tcfp_P_tab; scalar_t__ tcfp_R_tab; int tcf_rate_est; int tcf_bstats; struct tcf_common* tcf_next; struct tcf_common common; int tcf_index; } ;


 int POL_TAB_MASK ;
 int WARN_ON (int) ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (struct tcf_police*) ;
 int police_lock ;
 int qdisc_put_rtab (scalar_t__) ;
 unsigned int tcf_hash (int ,int ) ;
 struct tcf_common** tcf_police_ht ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void tcf_police_destroy(struct tcf_police *p)
{
 unsigned int h = tcf_hash(p->tcf_index, POL_TAB_MASK);
 struct tcf_common **p1p;

 for (p1p = &tcf_police_ht[h]; *p1p; p1p = &(*p1p)->tcfc_next) {
  if (*p1p == &p->common) {
   write_lock_bh(&police_lock);
   *p1p = p->tcf_next;
   write_unlock_bh(&police_lock);
   gen_kill_estimator(&p->tcf_bstats,
        &p->tcf_rate_est);
   if (p->tcfp_R_tab)
    qdisc_put_rtab(p->tcfp_R_tab);
   if (p->tcfp_P_tab)
    qdisc_put_rtab(p->tcfp_P_tab);
   kfree(p);
   return;
  }
 }
 WARN_ON(1);
}
