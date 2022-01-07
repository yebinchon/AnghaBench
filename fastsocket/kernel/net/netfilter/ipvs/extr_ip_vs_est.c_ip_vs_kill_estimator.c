
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_estimator {int list; } ;
struct ip_vs_stats {struct ip_vs_estimator est; } ;


 int est_lock ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_kill_estimator(struct ip_vs_stats *stats)
{
 struct ip_vs_estimator *est = &stats->est;

 spin_lock_bh(&est_lock);
 list_del(&est->list);
 spin_unlock_bh(&est_lock);
}
