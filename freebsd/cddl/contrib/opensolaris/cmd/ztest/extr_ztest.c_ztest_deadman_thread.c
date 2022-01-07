
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zs_thread_stop; int zs_thread_start; } ;
typedef TYPE_1__ ztest_shared_t ;
struct TYPE_6__ {int * spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int hrtime_t ;


 int MSEC2NSEC (int) ;
 scalar_t__ NSEC2MSEC (int) ;
 int fatal (int ,char*,int) ;
 int poll (int *,int ,int) ;
 int printf (char*,int) ;
 scalar_t__ spa_suspended (TYPE_2__*) ;
 int vdev_deadman (int *) ;
 int zfs_deadman_synctime_ms ;
 TYPE_2__* ztest_spa ;

__attribute__((used)) static void *
ztest_deadman_thread(void *arg)
{
 ztest_shared_t *zs = arg;
 spa_t *spa = ztest_spa;
 hrtime_t delta, total = 0;

 for (;;) {
  delta = zs->zs_thread_stop - zs->zs_thread_start +
      MSEC2NSEC(zfs_deadman_synctime_ms);

  (void) poll(((void*)0), 0, (int)NSEC2MSEC(delta));







  if (spa_suspended(spa) || spa->spa_root_vdev == ((void*)0)) {
   fatal(0, "aborting test after %llu seconds because "
       "pool has transitioned to a suspended state.",
       zfs_deadman_synctime_ms / 1000);
   return (((void*)0));
  }
  vdev_deadman(spa->spa_root_vdev);

  total += zfs_deadman_synctime_ms/1000;
  (void) printf("ztest has been running for %lld seconds\n",
      total);
 }
}
