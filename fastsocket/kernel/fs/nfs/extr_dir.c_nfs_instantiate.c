
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {scalar_t__ size; } ;
struct nfs_fattr {int valid; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; int d_name; struct inode* d_inode; } ;
struct TYPE_8__ {int (* lookup ) (int ,struct inode*,int *,struct nfs_fh*,struct nfs_fattr*) ;} ;
struct TYPE_7__ {int client; } ;
struct TYPE_6__ {TYPE_1__* rpc_ops; } ;
struct TYPE_5__ {int (* getattr ) (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;} ;


 int EACCES ;
 scalar_t__ IS_ERR (struct inode*) ;
 int NFS_ATTR_FATTR ;
 TYPE_4__* NFS_PROTO (struct inode*) ;
 struct nfs_server* NFS_SB (int ) ;
 TYPE_3__* NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 int d_drop (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct inode* nfs_fhget (int ,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int stub1 (int ,struct inode*,int *,struct nfs_fh*,struct nfs_fattr*) ;
 int stub2 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;

int nfs_instantiate(struct dentry *dentry, struct nfs_fh *fhandle,
    struct nfs_fattr *fattr)
{
 struct dentry *parent = dget_parent(dentry);
 struct inode *dir = parent->d_inode;
 struct inode *inode;
 int error = -EACCES;

 d_drop(dentry);


 if (dentry->d_inode)
  goto out;
 if (fhandle->size == 0) {
  error = NFS_PROTO(dir)->lookup(NFS_SERVER(dir)->client, dir, &dentry->d_name, fhandle, fattr);
  if (error)
   goto out_error;
 }
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 if (!(fattr->valid & NFS_ATTR_FATTR)) {
  struct nfs_server *server = NFS_SB(dentry->d_sb);
  error = server->nfs_client->rpc_ops->getattr(server, fhandle, fattr);
  if (error < 0)
   goto out_error;
 }
 inode = nfs_fhget(dentry->d_sb, fhandle, fattr);
 error = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_error;
 d_add(dentry, inode);
out:
 dput(parent);
 return 0;
out_error:
 nfs_mark_for_revalidate(dir);
 dput(parent);
 return error;
}
