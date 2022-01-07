
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int snap3name ;
typedef int snap2name ;
typedef int snap1name ;
typedef int clone2name ;
typedef int clone1name ;


 int B_FALSE ;
 int ENOENT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_destroy_head (char*) ;
 int dsl_destroy_snapshot (char*,int ) ;
 int fatal (int ,char*,char*,int) ;
 int snprintf (char*,int,char*,char*,int ) ;

void
ztest_dsl_dataset_cleanup(char *osname, uint64_t id)
{
 char snap1name[ZFS_MAX_DATASET_NAME_LEN];
 char clone1name[ZFS_MAX_DATASET_NAME_LEN];
 char snap2name[ZFS_MAX_DATASET_NAME_LEN];
 char clone2name[ZFS_MAX_DATASET_NAME_LEN];
 char snap3name[ZFS_MAX_DATASET_NAME_LEN];
 int error;

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

 error = dsl_destroy_head(clone2name);
 if (error && error != ENOENT)
  fatal(0, "dsl_destroy_head(%s) = %d", clone2name, error);
 error = dsl_destroy_snapshot(snap3name, B_FALSE);
 if (error && error != ENOENT)
  fatal(0, "dsl_destroy_snapshot(%s) = %d", snap3name, error);
 error = dsl_destroy_snapshot(snap2name, B_FALSE);
 if (error && error != ENOENT)
  fatal(0, "dsl_destroy_snapshot(%s) = %d", snap2name, error);
 error = dsl_destroy_head(clone1name);
 if (error && error != ENOENT)
  fatal(0, "dsl_destroy_head(%s) = %d", clone1name, error);
 error = dsl_destroy_snapshot(snap1name, B_FALSE);
 if (error && error != ENOENT)
  fatal(0, "dsl_destroy_snapshot(%s) = %d", snap1name, error);
}
