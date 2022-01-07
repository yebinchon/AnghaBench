
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int snapname ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ENOENT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_destroy_snapshot (char*,int ) ;
 int fatal (int ,char*,char*,int) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static boolean_t
ztest_snapshot_destroy(char *osname, uint64_t id)
{
 char snapname[ZFS_MAX_DATASET_NAME_LEN];
 int error;

 (void) snprintf(snapname, sizeof (snapname), "%s@%llu", osname,
     (u_longlong_t)id);

 error = dsl_destroy_snapshot(snapname, B_FALSE);
 if (error != 0 && error != ENOENT)
  fatal(0, "ztest_snapshot_destroy(%s) = %d", snapname, error);
 return (B_TRUE);
}
