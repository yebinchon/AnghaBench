
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct dentry {int d_flags; TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_9__ {int (* remove ) (struct inode*,TYPE_3__*) ;} ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; struct inode* d_inode; } ;


 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int ENOENT ;
 TYPE_5__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int dfprintk (int ,char*,int ,int ) ;
 int nfs_dentry_handle_enoent (struct dentry*) ;
 int nfs_drop_nlink (struct inode*) ;
 int nfs_inode_return_delegation (struct inode*) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int stub1 (struct inode*,TYPE_3__*) ;
 int stub2 (struct inode*,TYPE_3__*) ;

__attribute__((used)) static int nfs_safe_remove(struct dentry *dentry)
{
 struct inode *dir = dentry->d_parent->d_inode;
 struct inode *inode = dentry->d_inode;
 int error = -EBUSY;

 dfprintk(VFS, "NFS: safe_remove(%s/%s)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);


 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
  error = 0;
  goto out;
 }

 if (inode != ((void*)0)) {
  nfs_inode_return_delegation(inode);
  error = NFS_PROTO(dir)->remove(dir, &dentry->d_name);

  if (error == 0)
   nfs_drop_nlink(inode);
  nfs_mark_for_revalidate(inode);
 } else
  error = NFS_PROTO(dir)->remove(dir, &dentry->d_name);
 if (error == -ENOENT)
  nfs_dentry_handle_enoent(dentry);
out:
 return error;
}
