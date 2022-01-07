
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct file_system_type {int fs_flags; } ;
struct TYPE_2__ {int s_subtype; } ;


 int ENODEV ;
 struct vfsmount* ERR_PTR (int ) ;
 int FS_HAS_SUBTYPE ;
 int IS_ERR (struct vfsmount*) ;
 struct vfsmount* fs_set_subtype (struct vfsmount*,char const*) ;
 struct file_system_type* get_fs_type (char const*) ;
 int put_filesystem (struct file_system_type*) ;
 struct vfsmount* vfs_kern_mount (struct file_system_type*,int,char const*,void*) ;

struct vfsmount *
do_kern_mount(const char *fstype, int flags, const char *name, void *data)
{
 struct file_system_type *type = get_fs_type(fstype);
 struct vfsmount *mnt;
 if (!type)
  return ERR_PTR(-ENODEV);
 mnt = vfs_kern_mount(type, flags, name, data);
 if (!IS_ERR(mnt) && (type->fs_flags & FS_HAS_SUBTYPE) &&
     !mnt->mnt_sb->s_subtype)
  mnt = fs_set_subtype(mnt, fstype);
 put_filesystem(type);
 return mnt;
}
