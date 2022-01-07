
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; int ia_mode; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int EINVAL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int current_euid_egid (int *,int *) ;
 int new_valid_dev (int ) ;
 int smb_instantiate (struct dentry*,int ,int ) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_setattr_unix (struct dentry*,struct iattr*,int ,int ) ;

__attribute__((used)) static int
smb_make_node(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
 int error;
 struct iattr attr;

 attr.ia_valid = ATTR_MODE | ATTR_UID | ATTR_GID;
 attr.ia_mode = mode;
 current_euid_egid(&attr.ia_uid, &attr.ia_gid);

 if (!new_valid_dev(dev))
  return -EINVAL;

 smb_invalid_dir_cache(dir);
 error = smb_proc_setattr_unix(dentry, &attr, MAJOR(dev), MINOR(dev));
 if (!error) {
  error = smb_instantiate(dentry, 0, 0);
 }
 return error;
}
