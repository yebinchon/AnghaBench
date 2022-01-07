
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; int mnt_devname; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 char* nfs_path (int ,int ,struct dentry const*,char*,int ) ;

__attribute__((used)) static inline char *nfs_devname(const struct vfsmount *mnt_parent,
    const struct dentry *dentry,
    char *buffer, ssize_t buflen)
{
 return nfs_path(mnt_parent->mnt_devname, mnt_parent->mnt_root,
   dentry, buffer, buflen);
}
