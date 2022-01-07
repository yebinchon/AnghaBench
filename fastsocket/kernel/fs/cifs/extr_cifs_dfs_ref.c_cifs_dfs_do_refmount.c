
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dfs_info3_param {int dummy; } ;
struct cifs_sb_info {int mountdata; } ;


 scalar_t__ IS_ERR (char*) ;
 char* cifs_compose_mount_options (int ,char const*,struct dfs_info3_param const*,char**) ;
 int cifs_fs_type ;
 int kfree (char*) ;
 struct vfsmount* vfs_kern_mount (int *,int ,char*,char*) ;

__attribute__((used)) static struct vfsmount *cifs_dfs_do_refmount(struct cifs_sb_info *cifs_sb,
  const char *fullpath, const struct dfs_info3_param *ref)
{
 struct vfsmount *mnt;
 char *mountdata;
 char *devname = ((void*)0);


 mountdata = cifs_compose_mount_options(cifs_sb->mountdata,
   fullpath + 1, ref, &devname);

 if (IS_ERR(mountdata))
  return (struct vfsmount *)mountdata;

 mnt = vfs_kern_mount(&cifs_fs_type, 0, devname, mountdata);
 kfree(mountdata);
 kfree(devname);
 return mnt;

}
