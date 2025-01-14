
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {int d_sb; TYPE_1__ d_name; struct dentry* d_parent; int d_op; } ;
struct TYPE_6__ {int (* lookup ) (int ,struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*) ;int dentry_ops; } ;
struct TYPE_5__ {scalar_t__ namelen; int client; } ;


 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int NFSIOS_VFSLOOKUP ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 TYPE_2__* NFS_SERVER (struct inode*) ;
 int VFS ;
 int d_instantiate (struct dentry*,int *) ;
 struct dentry* d_materialise_unique (struct dentry*,struct inode*) ;
 int dfprintk (int ,char*,int ,int ) ;
 int nfs_advise_use_readdirplus (struct inode*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_fh* nfs_alloc_fhandle () ;
 int nfs_block_sillyrename (struct dentry*) ;
 struct inode* nfs_fhget (int ,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_fhandle (struct nfs_fh*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 scalar_t__ nfs_is_exclusive_create (struct inode*,struct nameidata*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_unblock_sillyrename (struct dentry*) ;
 int stub1 (int ,struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*) ;

__attribute__((used)) static struct dentry *nfs_lookup(struct inode *dir, struct dentry * dentry, struct nameidata *nd)
{
 struct dentry *res;
 struct dentry *parent;
 struct inode *inode = ((void*)0);
 struct nfs_fh *fhandle = ((void*)0);
 struct nfs_fattr *fattr = ((void*)0);
 int error;

 dfprintk(VFS, "NFS: lookup(%s/%s)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);
 nfs_inc_stats(dir, NFSIOS_VFSLOOKUP);

 res = ERR_PTR(-ENAMETOOLONG);
 if (dentry->d_name.len > NFS_SERVER(dir)->namelen)
  goto out;

 dentry->d_op = NFS_PROTO(dir)->dentry_ops;





 if (nfs_is_exclusive_create(dir, nd)) {
  d_instantiate(dentry, ((void*)0));
  res = ((void*)0);
  goto out;
 }

 res = ERR_PTR(-ENOMEM);
 fhandle = nfs_alloc_fhandle();
 fattr = nfs_alloc_fattr();
 if (fhandle == ((void*)0) || fattr == ((void*)0))
  goto out;

 parent = dentry->d_parent;

 nfs_block_sillyrename(parent);
 error = NFS_PROTO(dir)->lookup(NFS_SERVER(dir)->client, dir, &dentry->d_name, fhandle, fattr);
 if (error == -ENOENT)
  goto no_entry;
 if (error < 0) {
  res = ERR_PTR(error);
  goto out_unblock_sillyrename;
 }
 inode = nfs_fhget(dentry->d_sb, fhandle, fattr);
 res = (struct dentry *)inode;
 if (IS_ERR(res))
  goto out_unblock_sillyrename;


 nfs_advise_use_readdirplus(dir);

no_entry:
 res = d_materialise_unique(dentry, inode);
 if (res != ((void*)0)) {
  if (IS_ERR(res))
   goto out_unblock_sillyrename;
  dentry = res;
 }
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
out_unblock_sillyrename:
 nfs_unblock_sillyrename(parent);
out:
 nfs_free_fattr(fattr);
 nfs_free_fhandle(fhandle);
 return res;
}
