
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_stats {int lock; int ustats; } ;


 int ip_vs_zero_estimator (struct ip_vs_stats*) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ip_vs_zero_stats(struct ip_vs_stats *stats)
{
 spin_lock_bh(&stats->lock);

 memset(&stats->ustats, 0, sizeof(stats->ustats));
 ip_vs_zero_estimator(stats);

 spin_unlock_bh(&stats->lock);
}
