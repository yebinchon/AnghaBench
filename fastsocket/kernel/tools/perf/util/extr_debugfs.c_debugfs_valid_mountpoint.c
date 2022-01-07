
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {long f_type; } ;


 scalar_t__ DEBUGFS_MAGIC ;
 int ENOENT ;
 scalar_t__ statfs (char const*,struct statfs*) ;

int debugfs_valid_mountpoint(const char *debugfs)
{
 struct statfs st_fs;

 if (statfs(debugfs, &st_fs) < 0)
  return -ENOENT;
 else if (st_fs.f_type != (long) DEBUGFS_MAGIC)
  return -ENOENT;

 return 0;
}
