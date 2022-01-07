
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_stats_user {int dummy; } ;
struct ip_vs_stats {int lock; int ustats; } ;


 int memcpy (struct ip_vs_stats_user*,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ip_vs_copy_stats(struct ip_vs_stats_user *dst, struct ip_vs_stats *src)
{
 spin_lock_bh(&src->lock);
 memcpy(dst, &src->ustats, sizeof(*dst));
 spin_unlock_bh(&src->lock);
}
