
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int get_sb_nodev (struct file_system_type*,int,void*,int ,struct vfsmount*) ;
 int ramfs_fill_super ;

int ramfs_get_sb(struct file_system_type *fs_type,
 int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
 return get_sb_nodev(fs_type, flags, data, ramfs_fill_super, mnt);
}
