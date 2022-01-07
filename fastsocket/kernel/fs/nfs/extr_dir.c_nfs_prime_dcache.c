
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int len; char* name; int hash; } ;
struct nfs_entry {int len; char* name; int fattr; int fh; } ;
struct inode {int d_sb; int d_op; struct inode* d_inode; } ;
struct dentry {int d_sb; int d_op; struct dentry* d_inode; } ;
struct TYPE_2__ {int dentry_ops; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 struct inode* d_alloc (struct inode*,struct qstr*) ;
 int d_drop (struct inode*) ;
 struct inode* d_lookup (struct inode*,struct qstr*) ;
 struct inode* d_materialise_unique (struct inode*,struct inode*) ;
 int dput (struct inode*) ;
 int full_name_hash (char*,int) ;
 struct inode* nfs_fhget (int ,int ,int ) ;
 int nfs_refresh_inode (struct inode*,int ) ;
 scalar_t__ nfs_same_file (struct inode*,struct nfs_entry*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct inode*,int ) ;

__attribute__((used)) static
void nfs_prime_dcache(struct dentry *parent, struct nfs_entry *entry)
{
 struct qstr filename = {
  .len = entry->len,
  .name = entry->name,
 };
 struct dentry *dentry;
 struct dentry *alias;
 struct inode *dir = parent->d_inode;
 struct inode *inode;

 if (filename.name[0] == '.') {
  if (filename.len == 1)
   return;
  if (filename.len == 2 && filename.name[1] == '.')
   return;
 }
 filename.hash = full_name_hash(filename.name, filename.len);

 dentry = d_lookup(parent, &filename);
 if (dentry != ((void*)0)) {
  if (nfs_same_file(dentry, entry)) {
   nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
   nfs_refresh_inode(dentry->d_inode, entry->fattr);
   goto out;
  } else {
   d_drop(dentry);
   dput(dentry);
  }
 }

 dentry = d_alloc(parent, &filename);
 if (dentry == ((void*)0))
  return;

 dentry->d_op = NFS_PROTO(dir)->dentry_ops;
 inode = nfs_fhget(dentry->d_sb, entry->fh, entry->fattr);
 if (IS_ERR(inode))
  goto out;

 alias = d_materialise_unique(dentry, inode);
 if (IS_ERR(alias))
  goto out;
 else if (alias) {
  nfs_set_verifier(alias, nfs_save_change_attribute(dir));
  dput(alias);
 } else
  nfs_set_verifier(dentry, nfs_save_change_attribute(dir));

out:
 dput(dentry);
}
