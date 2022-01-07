
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
struct TYPE_6__ {int (* mkdir ) (struct inode*,struct dentry*,struct iattr*) ;} ;
struct TYPE_4__ {int s_id; } ;


 int ATTR_MODE ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 int S_IFDIR ;
 int VFS ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,int ) ;
 int stub1 (struct inode*,struct dentry*,struct iattr*) ;

__attribute__((used)) static int nfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct iattr attr;
 int error;

 dfprintk(VFS, "NFS: mkdir(%s/%ld), %s\n",
   dir->i_sb->s_id, dir->i_ino, dentry->d_name.name);

 attr.ia_valid = ATTR_MODE;
 attr.ia_mode = mode | S_IFDIR;

 error = NFS_PROTO(dir)->mkdir(dir, dentry, &attr);
 if (error != 0)
  goto out_err;
 return 0;
out_err:
 d_drop(dentry);
 return error;
}
