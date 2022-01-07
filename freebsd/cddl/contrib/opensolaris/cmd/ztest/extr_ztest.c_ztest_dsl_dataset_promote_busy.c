
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;
typedef int snap3name ;
typedef int snap2name ;
typedef int snap1name ;
typedef int objset_t ;
typedef int clone2name ;
typedef int clone1name ;


 int B_TRUE ;
 int DMU_OST_ANY ;
 int EBUSY ;
 int EEXIST ;
 int ENOSPC ;
 int FTAG ;
 int RW_READER ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_clone (char*,char*) ;
 int dmu_objset_disown (int *,int ) ;
 int dmu_objset_own (char*,int ,int ,int ,int **) ;
 int dmu_objset_snapshot_one (char*,scalar_t__) ;
 int dsl_dataset_promote (char*,int *) ;
 int fatal (int ,char*,char*,int) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ strchr (char*,char) ;
 int ztest_dsl_dataset_cleanup (char*,int ) ;
 int ztest_name_lock ;
 int ztest_record_enospc (int ) ;

void
ztest_dsl_dataset_promote_busy(ztest_ds_t *zd, uint64_t id)
{
 objset_t *os;
 char snap1name[ZFS_MAX_DATASET_NAME_LEN];
 char clone1name[ZFS_MAX_DATASET_NAME_LEN];
 char snap2name[ZFS_MAX_DATASET_NAME_LEN];
 char clone2name[ZFS_MAX_DATASET_NAME_LEN];
 char snap3name[ZFS_MAX_DATASET_NAME_LEN];
 char *osname = zd->zd_name;
 int error;

 rw_enter(&ztest_name_lock, RW_READER);

 ztest_dsl_dataset_cleanup(osname, id);

 (void) snprintf(snap1name, sizeof (snap1name),
     "%s@s1_%llu", osname, id);
 (void) snprintf(clone1name, sizeof (clone1name),
     "%s/c1_%llu", osname, id);
 (void) snprintf(snap2name, sizeof (snap2name),
     "%s@s2_%llu", clone1name, id);
 (void) snprintf(clone2name, sizeof (clone2name),
     "%s/c2_%llu", osname, id);
 (void) snprintf(snap3name, sizeof (snap3name),
     "%s@s3_%llu", clone1name, id);

 error = dmu_objset_snapshot_one(osname, strchr(snap1name, '@') + 1);
 if (error && error != EEXIST) {
  if (error == ENOSPC) {
   ztest_record_enospc(FTAG);
   goto out;
  }
  fatal(0, "dmu_take_snapshot(%s) = %d", snap1name, error);
 }

 error = dmu_objset_clone(clone1name, snap1name);
 if (error) {
  if (error == ENOSPC) {
   ztest_record_enospc(FTAG);
   goto out;
  }
  fatal(0, "dmu_objset_create(%s) = %d", clone1name, error);
 }

 error = dmu_objset_snapshot_one(clone1name, strchr(snap2name, '@') + 1);
 if (error && error != EEXIST) {
  if (error == ENOSPC) {
   ztest_record_enospc(FTAG);
   goto out;
  }
  fatal(0, "dmu_open_snapshot(%s) = %d", snap2name, error);
 }

 error = dmu_objset_snapshot_one(clone1name, strchr(snap3name, '@') + 1);
 if (error && error != EEXIST) {
  if (error == ENOSPC) {
   ztest_record_enospc(FTAG);
   goto out;
  }
  fatal(0, "dmu_open_snapshot(%s) = %d", snap3name, error);
 }

 error = dmu_objset_clone(clone2name, snap3name);
 if (error) {
  if (error == ENOSPC) {
   ztest_record_enospc(FTAG);
   goto out;
  }
  fatal(0, "dmu_objset_create(%s) = %d", clone2name, error);
 }

 error = dmu_objset_own(snap2name, DMU_OST_ANY, B_TRUE, FTAG, &os);
 if (error)
  fatal(0, "dmu_objset_own(%s) = %d", snap2name, error);
 error = dsl_dataset_promote(clone2name, ((void*)0));
 if (error == ENOSPC) {
  dmu_objset_disown(os, FTAG);
  ztest_record_enospc(FTAG);
  goto out;
 }
 if (error != EBUSY)
  fatal(0, "dsl_dataset_promote(%s), %d, not EBUSY", clone2name,
      error);
 dmu_objset_disown(os, FTAG);

out:
 ztest_dsl_dataset_cleanup(osname, id);

 rw_exit(&ztest_name_lock);
}
