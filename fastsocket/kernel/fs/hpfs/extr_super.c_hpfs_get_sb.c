
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int get_sb_bdev (struct file_system_type*,int,char const*,void*,int ,struct vfsmount*) ;
 int hpfs_fill_super ;

__attribute__((used)) static int hpfs_get_sb(struct file_system_type *fs_type,
 int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
 return get_sb_bdev(fs_type, flags, dev_name, data, hpfs_fill_super,
      mnt);
}
