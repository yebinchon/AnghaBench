
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_count; } ;
struct TYPE_7__ {int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_8__ {int (* link ) (struct inode*,struct inode*,TYPE_3__*) ;} ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 TYPE_4__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int atomic_inc (int *) ;
 int d_add (struct dentry*,struct inode*) ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,int ,int ) ;
 int nfs_inode_return_delegation (struct inode*) ;
 int stub1 (struct inode*,struct inode*,TYPE_3__*) ;

__attribute__((used)) static int
nfs_link(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;
 int error;

 dfprintk(VFS, "NFS: link(%s/%s -> %s/%s)\n",
  old_dentry->d_parent->d_name.name, old_dentry->d_name.name,
  dentry->d_parent->d_name.name, dentry->d_name.name);

 nfs_inode_return_delegation(inode);

 d_drop(dentry);
 error = NFS_PROTO(dir)->link(inode, dir, &dentry->d_name);
 if (error == 0) {
  atomic_inc(&inode->i_count);
  d_add(dentry, inode);
 }
 return error;
}
