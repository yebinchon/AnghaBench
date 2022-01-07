
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int (* get_sb ) (struct file_system_type*,int,char const*,char*,struct vfsmount*) ;} ;


 int ENODEV ;
 struct file_system_type* get_fs_type (char*) ;
 int put_filesystem (struct file_system_type*) ;
 int stub1 (struct file_system_type*,int,char const*,char*,struct vfsmount*) ;

__attribute__((used)) static int cpuset_get_sb(struct file_system_type *fs_type,
    int flags, const char *unused_dev_name,
    void *data, struct vfsmount *mnt)
{
 struct file_system_type *cgroup_fs = get_fs_type("cgroup");
 int ret = -ENODEV;
 if (cgroup_fs) {
  char mountopts[] =
   "cpuset,noprefix,"
   "release_agent=/sbin/cpuset_release_agent";
  ret = cgroup_fs->get_sb(cgroup_fs, flags,
        unused_dev_name, mountopts, mnt);
  put_filesystem(cgroup_fs);
 }
 return ret;
}
