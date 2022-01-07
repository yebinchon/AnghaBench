
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int gadgetfs_fill_super ;
 int get_sb_single (struct file_system_type*,int,void*,int ,struct vfsmount*) ;

__attribute__((used)) static int
gadgetfs_get_sb (struct file_system_type *t, int flags,
  const char *path, void *opts, struct vfsmount *mnt)
{
 return get_sb_single (t, flags, opts, gadgetfs_fill_super, mnt);
}
