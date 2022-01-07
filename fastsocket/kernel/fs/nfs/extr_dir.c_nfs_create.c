
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_3__ open; } ;
struct nameidata {int flags; TYPE_4__ intent; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct TYPE_7__ {int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_10__ {int (* create ) (struct inode*,struct dentry*,struct iattr*,int,int *) ;} ;
struct TYPE_6__ {int s_id; } ;


 int ATTR_MODE ;
 int LOOKUP_CREATE ;
 TYPE_5__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,int ) ;
 int stub1 (struct inode*,struct dentry*,struct iattr*,int,int *) ;

__attribute__((used)) static int nfs_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 struct iattr attr;
 int error;
 int open_flags = 0;

 dfprintk(VFS, "NFS: create(%s/%ld), %s\n",
   dir->i_sb->s_id, dir->i_ino, dentry->d_name.name);

 attr.ia_mode = mode;
 attr.ia_valid = ATTR_MODE;

 if ((nd->flags & LOOKUP_CREATE) != 0)
  open_flags = nd->intent.open.flags;

 error = NFS_PROTO(dir)->create(dir, dentry, &attr, open_flags, ((void*)0));
 if (error != 0)
  goto out_err;
 return 0;
out_err:
 d_drop(dentry);
 return error;
}
