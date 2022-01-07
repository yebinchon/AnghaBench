
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateest {scalar_t__ refcnt; int rstats; int bstats; int list; } ;


 int gen_kill_estimator (int *,int *) ;
 int hlist_del (int *) ;
 int kfree (struct xt_rateest*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xt_rateest_mutex ;

void xt_rateest_put(struct xt_rateest *est)
{
 mutex_lock(&xt_rateest_mutex);
 if (--est->refcnt == 0) {
  hlist_del(&est->list);
  gen_kill_estimator(&est->bstats, &est->rstats);
  kfree(est);
 }
 mutex_unlock(&xt_rateest_mutex);
}
