
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ztest_ds_t ;
struct TYPE_10__ {int vdev_guid; int * vdev_initialize_thread; int vdev_path; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_11__ {int spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;
struct TYPE_12__ {int zo_verbose; } ;


 int FTAG ;


 int POOL_INITIALIZE_FUNCS ;

 int RW_READER ;
 int SCL_VDEV ;
 int free (char*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,...) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_vdev_initialize (TYPE_2__*,int,int) ;
 char* strdup (int ) ;
 int zfs_dbgmsg (char*,TYPE_1__*,int) ;
 TYPE_5__ ztest_opts ;
 int ztest_random (int ) ;
 TYPE_1__* ztest_random_concrete_vdev_leaf (int ) ;
 TYPE_2__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_initialize(ztest_ds_t *zd, uint64_t id)
{
 spa_t *spa = ztest_spa;
 int error = 0;

 mutex_enter(&ztest_vdev_lock);

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);


 vdev_t *rand_vd = ztest_random_concrete_vdev_leaf(spa->spa_root_vdev);
 if (rand_vd == ((void*)0)) {
  spa_config_exit(spa, SCL_VDEV, FTAG);
  mutex_exit(&ztest_vdev_lock);
  return;
 }






 uint64_t guid = rand_vd->vdev_guid;
 char *path = strdup(rand_vd->vdev_path);
 boolean_t active = rand_vd->vdev_initialize_thread != ((void*)0);

 zfs_dbgmsg("vd %p, guid %llu", rand_vd, guid);
 spa_config_exit(spa, SCL_VDEV, FTAG);

 uint64_t cmd = ztest_random(POOL_INITIALIZE_FUNCS);
 error = spa_vdev_initialize(spa, guid, cmd);
 switch (cmd) {
 case 130:
  if (ztest_opts.zo_verbose >= 4) {
   (void) printf("Cancel initialize %s", path);
   if (!active)
    (void) printf(" failed (no initialize active)");
   (void) printf("\n");
  }
  break;
 case 129:
  if (ztest_opts.zo_verbose >= 4) {
   (void) printf("Start initialize %s", path);
   if (active && error == 0)
    (void) printf(" failed (already active)");
   else if (error != 0)
    (void) printf(" failed (error %d)", error);
   (void) printf("\n");
  }
  break;
 case 128:
  if (ztest_opts.zo_verbose >= 4) {
   (void) printf("Suspend initialize %s", path);
   if (!active)
    (void) printf(" failed (no initialize active)");
   (void) printf("\n");
  }
  break;
 }
 free(path);
 mutex_exit(&ztest_vdev_lock);
}
