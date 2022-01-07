
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int cache_lock ;
 int prune_cache_entries () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
cache_cleaner_func(struct work_struct *unused)
{
 spin_lock(&cache_lock);
 prune_cache_entries();
 spin_unlock(&cache_lock);
}
