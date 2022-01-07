
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int grp_count; int grp_time; int lock; int work; scalar_t__ queued; int lists; } ;
typedef TYPE_1__ xfs_mru_cache_t ;


 int _xfs_mru_cache_clear_reap_list (TYPE_1__*) ;
 int _xfs_mru_cache_migrate (TYPE_1__*,scalar_t__) ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
xfs_mru_cache_flush(
 xfs_mru_cache_t *mru)
{
 if (!mru || !mru->lists)
  return;

 spin_lock(&mru->lock);
 if (mru->queued) {
  spin_unlock(&mru->lock);
  cancel_delayed_work_sync(&mru->work);
  spin_lock(&mru->lock);
 }

 _xfs_mru_cache_migrate(mru, jiffies + mru->grp_count * mru->grp_time);
 _xfs_mru_cache_clear_reap_list(mru);

 spin_unlock(&mru->lock);
}
