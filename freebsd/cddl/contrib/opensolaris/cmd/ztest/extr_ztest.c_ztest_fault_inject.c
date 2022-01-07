
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_20__ {int zs_mirrors; int zs_splits; } ;
typedef TYPE_2__ ztest_shared_t ;
typedef int ztest_ds_t ;
struct TYPE_21__ {scalar_t__ vdev_resilver_txg; int vdev_guid; int vdev_path; void* vdev_cant_write; void* vdev_cant_read; scalar_t__ vdev_id; TYPE_4__* vdev_tsd; TYPE_11__* vdev_top; } ;
typedef TYPE_3__ vdev_t ;
typedef int vdev_label_t ;
struct TYPE_22__ {TYPE_1__* vf_vnode; } ;
typedef TYPE_4__ vdev_file_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_24__ {unsigned long long sav_count; TYPE_3__** sav_vdevs; } ;
struct TYPE_23__ {TYPE_6__ spa_l2cache; int spa_root_vdev; } ;
typedef TYPE_5__ spa_t ;
typedef TYPE_6__ spa_aux_vdev_t ;
typedef int pathrand ;
typedef int path0 ;
typedef void* boolean_t ;
typedef int bad ;
struct TYPE_19__ {int v_fd; } ;
struct TYPE_18__ {scalar_t__ vdev_islog; } ;
struct TYPE_17__ {int zo_raidz; int zo_verbose; int zo_pool; int zo_dir; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ EBUSY ;
 int FTAG ;
 int INT_MAX ;
 int MAX (int,int) ;
 int MAXFAULTS () ;
 int MAXPATHLEN ;
 int O_RDWR ;
 int P2ALIGN (size_t,int) ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_STATE ;
 int SEEK_END ;
 int SPA_MAXBLOCKSHIFT ;
 int VDEV_LABEL_END_SIZE ;
 int VDEV_LABEL_START_SIZE ;
 int VERIFY (int) ;
 int ZFS_OFFLINE_TEMPORARY ;
 int close (int) ;
 int fatal (int,char*,int,char*) ;
 size_t lseek (int,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int open (char*,int ) ;
 int printf (char*,char*,int ) ;
 int pwrite (int,int*,int,int) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int snprintf (char*,int,char*,int ,int ,int) ;
 int spa_config_enter (TYPE_5__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_5__*,int ,int ) ;
 int strcpy (char*,int ) ;
 TYPE_3__* vdev_lookup_by_path (int ,char*) ;
 scalar_t__ vdev_offline (TYPE_5__*,int,int) ;
 int vdev_online (TYPE_5__*,int,int ,int *) ;
 int vdev_resilver_needed (TYPE_11__*,int *,int *) ;
 int zfs_dbgmsg (char*,long long,int) ;
 char* ztest_dev_template ;
 scalar_t__ ztest_device_removal_active ;
 int ztest_name_lock ;
 TYPE_10__ ztest_opts ;
 unsigned long long ztest_random (unsigned long long) ;
 int ztest_random_vdev_top (TYPE_5__*,void*) ;
 TYPE_2__* ztest_shared ;
 TYPE_5__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_fault_inject(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 int fd;
 uint64_t offset;
 uint64_t leaves;
 uint64_t bad = 0x1990c0ffeedecadeULL;
 uint64_t top, leaf;
 char path0[MAXPATHLEN];
 char pathrand[MAXPATHLEN];
 size_t fsize;
 int bshift = SPA_MAXBLOCKSHIFT + 2;
 int iters = 1000;
 int maxfaults;
 int mirror_save;
 vdev_t *vd0 = ((void*)0);
 uint64_t guid0 = 0;
 boolean_t islog = B_FALSE;

 mutex_enter(&ztest_vdev_lock);







 if (ztest_device_removal_active) {
  mutex_exit(&ztest_vdev_lock);
  return;
 }

 maxfaults = MAXFAULTS();
 leaves = MAX(zs->zs_mirrors, 1) * ztest_opts.zo_raidz;
 mirror_save = zs->zs_mirrors;
 mutex_exit(&ztest_vdev_lock);

 ASSERT(leaves >= 1);







 rw_enter(&ztest_name_lock, RW_READER);




 spa_config_enter(spa, SCL_STATE, FTAG, RW_READER);

 if (ztest_random(2) == 0) {



  top = ztest_random_vdev_top(spa, B_TRUE);
  leaf = ztest_random(leaves) + zs->zs_splits;







  (void) snprintf(path0, sizeof (path0), ztest_dev_template,
      ztest_opts.zo_dir, ztest_opts.zo_pool,
      top * leaves + zs->zs_splits);
  (void) snprintf(pathrand, sizeof (pathrand), ztest_dev_template,
      ztest_opts.zo_dir, ztest_opts.zo_pool,
      top * leaves + leaf);

  vd0 = vdev_lookup_by_path(spa->spa_root_vdev, path0);
  if (vd0 != ((void*)0) && vd0->vdev_top->vdev_islog)
   islog = B_TRUE;






  if (vd0 != ((void*)0) && maxfaults != 1 &&
      (!vdev_resilver_needed(vd0->vdev_top, ((void*)0), ((void*)0)) ||
      vd0->vdev_resilver_txg != 0)) {
   vdev_file_t *vf = vd0->vdev_tsd;

   zfs_dbgmsg("injecting fault to vdev %llu; maxfaults=%d",
       (long long)vd0->vdev_id, (int)maxfaults);

   if (vf != ((void*)0) && ztest_random(3) == 0) {
    (void) close(vf->vf_vnode->v_fd);
    vf->vf_vnode->v_fd = -1;
   } else if (ztest_random(2) == 0) {
    vd0->vdev_cant_read = B_TRUE;
   } else {
    vd0->vdev_cant_write = B_TRUE;
   }
   guid0 = vd0->vdev_guid;
  }
 } else {



  spa_aux_vdev_t *sav = &spa->spa_l2cache;

  if (sav->sav_count == 0) {
   spa_config_exit(spa, SCL_STATE, FTAG);
   rw_exit(&ztest_name_lock);
   return;
  }
  vd0 = sav->sav_vdevs[ztest_random(sav->sav_count)];
  guid0 = vd0->vdev_guid;
  (void) strcpy(path0, vd0->vdev_path);
  (void) strcpy(pathrand, vd0->vdev_path);

  leaf = 0;
  leaves = 1;
  maxfaults = INT_MAX;
 }

 spa_config_exit(spa, SCL_STATE, FTAG);
 rw_exit(&ztest_name_lock);





 if ((maxfaults >= 2 || islog) && guid0 != 0) {
  if (ztest_random(10) < 6) {
   int flags = (ztest_random(2) == 0 ?
       ZFS_OFFLINE_TEMPORARY : 0);
   if (islog)
    rw_enter(&ztest_name_lock, RW_WRITER);

   VERIFY(vdev_offline(spa, guid0, flags) != EBUSY);

   if (islog)
    rw_exit(&ztest_name_lock);
  } else {
   mutex_enter(&ztest_vdev_lock);
   (void) vdev_online(spa, guid0, 0, ((void*)0));
   mutex_exit(&ztest_vdev_lock);
  }
 }

 if (maxfaults == 0)
  return;




 fd = open(pathrand, O_RDWR);

 if (fd == -1)
  return;

 fsize = lseek(fd, 0, SEEK_END);

 while (--iters != 0) {
  offset = ztest_random(fsize / (leaves << bshift)) *
      (leaves << bshift) + (leaf << bshift) +
      (ztest_random(1ULL << (bshift - 1)) & -8ULL);
  if ((leaf & 1) == 0 && offset < VDEV_LABEL_START_SIZE)
   continue;






  uint64_t psize = P2ALIGN(fsize, sizeof (vdev_label_t));
  if ((leaf & 1) == 1 &&
      offset + sizeof (bad) > psize - VDEV_LABEL_END_SIZE)
   continue;

  mutex_enter(&ztest_vdev_lock);
  if (mirror_save != zs->zs_mirrors) {
   mutex_exit(&ztest_vdev_lock);
   (void) close(fd);
   return;
  }

  if (pwrite(fd, &bad, sizeof (bad), offset) != sizeof (bad))
   fatal(1, "can't inject bad word at 0x%llx in %s",
       offset, pathrand);

  mutex_exit(&ztest_vdev_lock);

  if (ztest_opts.zo_verbose >= 7)
   (void) printf("injected bad word into %s,"
       " offset 0x%llx\n", pathrand, (u_longlong_t)offset);
 }

 (void) close(fd);
}
