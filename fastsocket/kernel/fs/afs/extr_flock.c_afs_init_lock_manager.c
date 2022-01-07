
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ afs_lock_manager ;
 int afs_lock_manager_mutex ;
 scalar_t__ create_singlethread_workqueue (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int afs_init_lock_manager(void)
{
 int ret;

 ret = 0;
 if (!afs_lock_manager) {
  mutex_lock(&afs_lock_manager_mutex);
  if (!afs_lock_manager) {
   afs_lock_manager =
    create_singlethread_workqueue("kafs_lockd");
   if (!afs_lock_manager)
    ret = -ENOMEM;
  }
  mutex_unlock(&afs_lock_manager_mutex);
 }
 return ret;
}
