
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct TYPE_5__ {int name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef int dev_t ;
struct TYPE_6__ {int (* mknod ) (struct inode*,struct dentry*,struct iattr*,int ) ;} ;
struct TYPE_4__ {int s_id; } ;


 int ATTR_MODE ;
 int EINVAL ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,int ) ;
 int new_valid_dev (int ) ;
 int stub1 (struct inode*,struct dentry*,struct iattr*,int ) ;

__attribute__((used)) static int
nfs_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t rdev)
{
 struct iattr attr;
 int status;

 dfprintk(VFS, "NFS: mknod(%s/%ld), %s\n",
   dir->i_sb->s_id, dir->i_ino, dentry->d_name.name);

 if (!new_valid_dev(rdev))
  return -EINVAL;

 attr.ia_mode = mode;
 attr.ia_valid = ATTR_MODE;

 status = NFS_PROTO(dir)->mknod(dir, dentry, &attr, rdev);
 if (status != 0)
  goto out_err;
 return 0;
out_err:
 d_drop(dentry);
 return status;
}
