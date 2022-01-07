
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; int mnt_root; struct vfsmount* mnt_parent; int mnt_mountpoint; } ;
struct file_system_type {int fs_flags; int (* get_sb ) (struct file_system_type*,int,char const*,void*,struct vfsmount*) ;int name; } ;
struct TYPE_3__ {scalar_t__ s_maxbytes; int s_umount; int s_flags; } ;


 int BUG_ON (int) ;
 int ENODEV ;
 int ENOMEM ;
 struct vfsmount* ERR_PTR (int) ;
 int FS_BINARY_MOUNTDATA ;
 int MS_BORN ;
 int WARN (int,char*,int ,scalar_t__) ;
 char* alloc_secdata () ;
 struct vfsmount* alloc_vfsmnt (char const*) ;
 int deactivate_locked_super (TYPE_1__*) ;
 int dput (int ) ;
 int free_secdata (char*) ;
 int free_vfsmnt (struct vfsmount*) ;
 int security_sb_copy_data (void*,char*) ;
 int security_sb_kern_mount (TYPE_1__*,int,char*) ;
 int stub1 (struct file_system_type*,int,char const*,void*,struct vfsmount*) ;
 int up_write (int *) ;

struct vfsmount *
vfs_kern_mount(struct file_system_type *type, int flags, const char *name, void *data)
{
 struct vfsmount *mnt;
 char *secdata = ((void*)0);
 int error;

 if (!type)
  return ERR_PTR(-ENODEV);

 error = -ENOMEM;
 mnt = alloc_vfsmnt(name);
 if (!mnt)
  goto out;

 if (data && !(type->fs_flags & FS_BINARY_MOUNTDATA)) {
  secdata = alloc_secdata();
  if (!secdata)
   goto out_mnt;

  error = security_sb_copy_data(data, secdata);
  if (error)
   goto out_free_secdata;
 }

 error = type->get_sb(type, flags, name, data, mnt);
 if (error < 0)
  goto out_free_secdata;
 BUG_ON(!mnt->mnt_sb);
 mnt->mnt_sb->s_flags |= MS_BORN;

  error = security_sb_kern_mount(mnt->mnt_sb, flags, secdata);
  if (error)
   goto out_sb;
 WARN((mnt->mnt_sb->s_maxbytes < 0), "%s set sb->s_maxbytes to "
  "negative value (%lld)\n", type->name, mnt->mnt_sb->s_maxbytes);

 mnt->mnt_mountpoint = mnt->mnt_root;
 mnt->mnt_parent = mnt;
 up_write(&mnt->mnt_sb->s_umount);
 free_secdata(secdata);
 return mnt;
out_sb:
 dput(mnt->mnt_root);
 deactivate_locked_super(mnt->mnt_sb);
out_free_secdata:
 free_secdata(secdata);
out_mnt:
 free_vfsmnt(mnt);
out:
 return ERR_PTR(error);
}
