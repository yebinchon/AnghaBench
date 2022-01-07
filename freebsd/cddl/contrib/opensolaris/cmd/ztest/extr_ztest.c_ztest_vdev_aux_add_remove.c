
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ zs_vdev_aux; } ;
typedef TYPE_2__ ztest_shared_t ;
typedef int ztest_ds_t ;
typedef int vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_16__ {int sav_count; TYPE_1__** sav_vdevs; } ;
struct TYPE_15__ {TYPE_4__ spa_l2cache; TYPE_4__ spa_spares; int * spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef TYPE_4__ spa_aux_vdev_t ;
typedef int path ;
typedef int nvlist_t ;
struct TYPE_17__ {int zo_vdev_size; int zo_pool; int zo_dir; } ;
struct TYPE_13__ {scalar_t__ vdev_guid; int vdev_path; } ;


 int B_FALSE ;

 int FTAG ;
 int MAXPATHLEN ;
 int RW_READER ;
 int SCL_VDEV ;


 char* ZPOOL_CONFIG_L2CACHE ;
 char* ZPOOL_CONFIG_SPARES ;
 int fatal (int ,char*,scalar_t__,int) ;
 int * make_vdev_root (int *,char*,int *,int,int ,int ,int ,int ,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,int ,int ,char*,scalar_t__) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int spa_vdev_add (TYPE_3__*,int *) ;
 int spa_vdev_remove (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int * vdev_lookup_by_path (int *,char*) ;
 int vdev_online (TYPE_3__*,scalar_t__,int ,int *) ;
 char* ztest_aux_template ;
 TYPE_7__ ztest_opts ;
 size_t ztest_random (int) ;
 TYPE_2__* ztest_shared ;
 TYPE_3__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_vdev_aux_add_remove(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 spa_aux_vdev_t *sav;
 char *aux;
 uint64_t guid = 0;
 int error;

 if (ztest_random(2) == 0) {
  sav = &spa->spa_spares;
  aux = ZPOOL_CONFIG_SPARES;
 } else {
  sav = &spa->spa_l2cache;
  aux = ZPOOL_CONFIG_L2CACHE;
 }

 mutex_enter(&ztest_vdev_lock);

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);

 if (sav->sav_count != 0 && ztest_random(4) == 0) {



  guid = sav->sav_vdevs[ztest_random(sav->sav_count)]->vdev_guid;
 } else {



  zs->zs_vdev_aux = 0;
  for (;;) {
   char path[MAXPATHLEN];
   int c;
   (void) snprintf(path, sizeof (path), ztest_aux_template,
       ztest_opts.zo_dir, ztest_opts.zo_pool, aux,
       zs->zs_vdev_aux);
   for (c = 0; c < sav->sav_count; c++)
    if (strcmp(sav->sav_vdevs[c]->vdev_path,
        path) == 0)
     break;
   if (c == sav->sav_count &&
       vdev_lookup_by_path(rvd, path) == ((void*)0))
    break;
   zs->zs_vdev_aux++;
  }
 }

 spa_config_exit(spa, SCL_VDEV, FTAG);

 if (guid == 0) {



  nvlist_t *nvroot = make_vdev_root(((void*)0), aux, ((void*)0),
      (ztest_opts.zo_vdev_size * 5) / 4, 0, 0, 0, 0, 1);
  error = spa_vdev_add(spa, nvroot);

  switch (error) {
  case 0:
   break;
  default:
   fatal(0, "spa_vdev_add(%p) = %d", nvroot, error);
  }
  nvlist_free(nvroot);
 } else {





  if (ztest_random(2) == 0)
   (void) vdev_online(spa, guid, 0, ((void*)0));

  error = spa_vdev_remove(spa, guid, B_FALSE);

  switch (error) {
  case 0:
  case 130:
  case 129:
  case 128:
   break;
  default:
   fatal(0, "spa_vdev_remove(%llu) = %d", guid, error);
  }
 }

 mutex_exit(&ztest_vdev_lock);
}
