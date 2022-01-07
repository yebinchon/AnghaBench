
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int zs_mirrors; } ;
typedef TYPE_2__ ztest_shared_t ;
typedef int ztest_ds_t ;
struct TYPE_20__ {int vdev_children; size_t vdev_guid; TYPE_1__* vdev_top; int * vdev_ops; int vdev_path; struct TYPE_20__* vdev_parent; struct TYPE_20__** vdev_child; } ;
typedef TYPE_3__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_22__ {int sav_count; TYPE_3__** sav_vdevs; } ;
struct TYPE_21__ {TYPE_3__* spa_root_vdev; TYPE_5__ spa_spares; } ;
typedef TYPE_4__ spa_t ;
typedef TYPE_5__ spa_aux_vdev_t ;
typedef int nvlist_t ;
typedef int newpath ;
struct TYPE_23__ {size_t zo_raidz; int zo_pool; int zo_dir; } ;
struct TYPE_18__ {int vdev_islog; size_t vdev_ashift; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int EBUSY ;
 int EDOM ;
 int ENODEV ;
 int ENOTSUP ;
 int EOVERFLOW ;
 int FTAG ;
 size_t MAX (int,int) ;
 int MAXPATHLEN ;
 int RW_WRITER ;
 int SCL_ALL ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int fatal (int ,char*,char*,size_t,...) ;
 int * make_vdev_root (char*,int *,int *,size_t,size_t,int ,int ,int ,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,int ,int ,size_t) ;
 int spa_config_enter (TYPE_4__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int ,int ) ;
 int spa_vdev_attach (TYPE_4__*,size_t,int *,int) ;
 int spa_vdev_detach (TYPE_4__*,size_t,size_t,int) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 size_t vdev_get_min_asize (TYPE_3__*) ;
 TYPE_3__* vdev_lookup_by_path (TYPE_3__*,char*) ;
 int vdev_mirror_ops ;
 int vdev_raidz_ops ;
 int vdev_reopen (TYPE_3__*) ;
 int vdev_replacing_ops ;
 int vdev_root_ops ;
 int vdev_spare_ops ;
 char* ztest_dev_template ;
 scalar_t__ ztest_device_removal_active ;
 size_t ztest_get_ashift () ;
 TYPE_9__ ztest_opts ;
 int ztest_random (int) ;
 size_t ztest_random_vdev_top (TYPE_4__*,int) ;
 TYPE_2__* ztest_shared ;
 TYPE_4__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_vdev_attach_detach(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 spa_aux_vdev_t *sav = &spa->spa_spares;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *oldvd, *newvd, *pvd;
 nvlist_t *root;
 uint64_t leaves;
 uint64_t leaf, top;
 uint64_t ashift = ztest_get_ashift();
 uint64_t oldguid, pguid;
 uint64_t oldsize, newsize;
 char oldpath[MAXPATHLEN], newpath[MAXPATHLEN];
 int replacing;
 int oldvd_has_siblings = B_FALSE;
 int newvd_is_spare = B_FALSE;
 int oldvd_is_log;
 int error, expected_error;

 mutex_enter(&ztest_vdev_lock);
 leaves = MAX(zs->zs_mirrors, 1) * ztest_opts.zo_raidz;

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);







 if (ztest_device_removal_active) {
  spa_config_exit(spa, SCL_ALL, FTAG);
  mutex_exit(&ztest_vdev_lock);
  return;
 }




 replacing = ztest_random(2);




 top = ztest_random_vdev_top(spa, B_TRUE);




 leaf = ztest_random(leaves);




 oldvd = rvd->vdev_child[top];
 if (zs->zs_mirrors >= 1) {
  ASSERT(oldvd->vdev_ops == &vdev_mirror_ops);
  ASSERT(oldvd->vdev_children >= zs->zs_mirrors);
  oldvd = oldvd->vdev_child[leaf / ztest_opts.zo_raidz];
 }
 if (ztest_opts.zo_raidz > 1) {
  ASSERT(oldvd->vdev_ops == &vdev_raidz_ops);
  ASSERT(oldvd->vdev_children == ztest_opts.zo_raidz);
  oldvd = oldvd->vdev_child[leaf % ztest_opts.zo_raidz];
 }





 while (oldvd->vdev_children != 0) {
  oldvd_has_siblings = B_TRUE;
  ASSERT(oldvd->vdev_children >= 2);
  oldvd = oldvd->vdev_child[ztest_random(oldvd->vdev_children)];
 }

 oldguid = oldvd->vdev_guid;
 oldsize = vdev_get_min_asize(oldvd);
 oldvd_is_log = oldvd->vdev_top->vdev_islog;
 (void) strcpy(oldpath, oldvd->vdev_path);
 pvd = oldvd->vdev_parent;
 pguid = pvd->vdev_guid;




 if (oldvd_has_siblings && ztest_random(2) == 0) {
  spa_config_exit(spa, SCL_ALL, FTAG);
  error = spa_vdev_detach(spa, oldguid, pguid, B_FALSE);
  if (error != 0 && error != ENODEV && error != EBUSY &&
      error != ENOTSUP && error != ZFS_ERR_CHECKPOINT_EXISTS &&
      error != ZFS_ERR_DISCARDING_CHECKPOINT)
   fatal(0, "detach (%s) returned %d", oldpath, error);
  mutex_exit(&ztest_vdev_lock);
  return;
 }





 if (sav->sav_count != 0 && ztest_random(3) == 0) {
  newvd = sav->sav_vdevs[ztest_random(sav->sav_count)];
  newvd_is_spare = B_TRUE;
  (void) strcpy(newpath, newvd->vdev_path);
 } else {
  (void) snprintf(newpath, sizeof (newpath), ztest_dev_template,
      ztest_opts.zo_dir, ztest_opts.zo_pool,
      top * leaves + leaf);
  if (ztest_random(2) == 0)
   newpath[strlen(newpath) - 1] = 'b';
  newvd = vdev_lookup_by_path(rvd, newpath);
 }

 if (newvd) {



  vdev_reopen(newvd);
  newsize = vdev_get_min_asize(newvd);
 } else {






  newsize = 10 * oldsize / (9 + ztest_random(3));
 }
 if (pvd->vdev_ops != &vdev_mirror_ops &&
     pvd->vdev_ops != &vdev_root_ops && (!replacing ||
     pvd->vdev_ops == &vdev_replacing_ops ||
     pvd->vdev_ops == &vdev_spare_ops))
  expected_error = ENOTSUP;
 else if (newvd_is_spare && (!replacing || oldvd_is_log))
  expected_error = ENOTSUP;
 else if (newvd == oldvd)
  expected_error = replacing ? 0 : EBUSY;
 else if (vdev_lookup_by_path(rvd, newpath) != ((void*)0))
  expected_error = EBUSY;
 else if (newsize < oldsize)
  expected_error = EOVERFLOW;
 else if (ashift > oldvd->vdev_top->vdev_ashift)
  expected_error = EDOM;
 else
  expected_error = 0;

 spa_config_exit(spa, SCL_ALL, FTAG);




 root = make_vdev_root(newpath, ((void*)0), ((void*)0), newvd == ((void*)0) ? newsize : 0,
     ashift, 0, 0, 0, 1);

 error = spa_vdev_attach(spa, oldguid, root, replacing);

 nvlist_free(root);






 if (expected_error == ENOTSUP &&
     (error == 0 || error == ENODEV || error == EOVERFLOW))
  expected_error = error;




 if (error == EOVERFLOW || error == EBUSY)
  expected_error = error;

 if (error == ZFS_ERR_CHECKPOINT_EXISTS ||
     error == ZFS_ERR_DISCARDING_CHECKPOINT)
  expected_error = error;


 if (error != expected_error && expected_error != EBUSY) {
  fatal(0, "attach (%s %llu, %s %llu, %d) "
      "returned %d, expected %d",
      oldpath, oldsize, newpath,
      newsize, replacing, error, expected_error);
 }

 mutex_exit(&ztest_vdev_lock);
}
