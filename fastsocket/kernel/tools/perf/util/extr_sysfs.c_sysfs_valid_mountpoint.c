
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {long f_type; } ;


 int ENOENT ;
 scalar_t__ SYSFS_MAGIC ;
 scalar_t__ statfs (char const*,struct statfs*) ;

__attribute__((used)) static int sysfs_valid_mountpoint(const char *sysfs)
{
 struct statfs st_fs;

 if (statfs(sysfs, &st_fs) < 0)
  return -ENOENT;
 else if (st_fs.f_type != (long) SYSFS_MAGIC)
  return -ENOENT;

 return 0;
}
