
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* d_fstype; char* d_dev; char* d_log; char* d_mountpt; char* d_opts; } ;
typedef TYPE_1__ disk_fs ;
typedef int FILE ;


 scalar_t__ NSTREQ (char*,char*,int) ;
 scalar_t__ STREQ (char*,char*) ;
 int error (char*) ;
 int fprintf (int *,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
write_aix3_dkfstab(FILE *ef, disk_fs *dp)
{
  if (STREQ(dp->d_fstype, "jfs") &&
      NSTREQ(dp->d_dev, "/dev/", 5) &&
      !dp->d_log)
    error("aix 3 needs a log device for journalled filesystem (jfs) mounts");

  fprintf(ef, "\n%s:\n\tdev = %s\n\tvfs = %s\n\ttype = %s\n\tlog = %s\n\tvol = %s\n\topts = %s\n\tmount = true\n\tcheck = true\n\tfree = false\n",
   dp->d_mountpt,
   dp->d_dev,
   dp->d_fstype,
   dp->d_fstype,
   dp->d_log,
   dp->d_mountpt,
   dp->d_opts);
}
