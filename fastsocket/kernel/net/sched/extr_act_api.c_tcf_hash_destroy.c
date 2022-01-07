
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_hashinfo {int lock; struct tcf_common** htab; int hmask; } ;
struct tcf_common {int tcfc_rate_est; int tcfc_bstats; struct tcf_common* tcfc_next; int tcfc_index; } ;


 int WARN_ON (int) ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (struct tcf_common*) ;
 unsigned int tcf_hash (int ,int ) ;
 int write_lock_bh (int ) ;
 int write_unlock_bh (int ) ;

void tcf_hash_destroy(struct tcf_common *p, struct tcf_hashinfo *hinfo)
{
 unsigned int h = tcf_hash(p->tcfc_index, hinfo->hmask);
 struct tcf_common **p1p;

 for (p1p = &hinfo->htab[h]; *p1p; p1p = &(*p1p)->tcfc_next) {
  if (*p1p == p) {
   write_lock_bh(hinfo->lock);
   *p1p = p->tcfc_next;
   write_unlock_bh(hinfo->lock);
   gen_kill_estimator(&p->tcfc_bstats,
        &p->tcfc_rate_est);
   kfree(p);
   return;
  }
 }
 WARN_ON(1);
}
