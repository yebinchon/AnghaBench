
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_2__ d_name; TYPE_4__* d_parent; int d_count; struct inode* d_inode; } ;
struct TYPE_10__ {int (* rename ) (struct inode*,TYPE_2__*,struct inode*,TYPE_2__*) ;} ;
struct TYPE_7__ {int name; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;


 int EBUSY ;
 int ENOENT ;
 TYPE_6__* NFS_PROTO (struct inode*) ;
 int S_ISDIR (int ) ;
 int VFS ;
 int atomic_read (int *) ;
 struct dentry* d_alloc (TYPE_4__*,TYPE_2__*) ;
 int d_drop (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int d_rehash (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,int ,int ,int) ;
 int dput (struct dentry*) ;
 int nfs_dentry_handle_enoent (struct dentry*) ;
 int nfs_drop_nlink (struct inode*) ;
 int nfs_inode_return_delegation (struct inode*) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_sillyrename (struct inode*,struct dentry*) ;
 int stub1 (struct inode*,TYPE_2__*,struct inode*,TYPE_2__*) ;

__attribute__((used)) static int nfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry)
{
 struct inode *old_inode = old_dentry->d_inode;
 struct inode *new_inode = new_dentry->d_inode;
 struct dentry *dentry = ((void*)0), *rehash = ((void*)0);
 int error = -EBUSY;

 dfprintk(VFS, "NFS: rename(%s/%s -> %s/%s, ct=%d)\n",
   old_dentry->d_parent->d_name.name, old_dentry->d_name.name,
   new_dentry->d_parent->d_name.name, new_dentry->d_name.name,
   atomic_read(&new_dentry->d_count));







 if (new_inode && !S_ISDIR(new_inode->i_mode)) {




  if (!d_unhashed(new_dentry)) {
   d_drop(new_dentry);
   rehash = new_dentry;
  }

  if (atomic_read(&new_dentry->d_count) > 2) {
   int err;


   dentry = d_alloc(new_dentry->d_parent,
      &new_dentry->d_name);
   if (!dentry)
    goto out;


   err = nfs_sillyrename(new_dir, new_dentry);
   if (err)
    goto out;

   new_dentry = dentry;
   rehash = ((void*)0);
   new_inode = ((void*)0);
  }
 }

 nfs_inode_return_delegation(old_inode);
 if (new_inode != ((void*)0))
  nfs_inode_return_delegation(new_inode);

 error = NFS_PROTO(old_dir)->rename(old_dir, &old_dentry->d_name,
        new_dir, &new_dentry->d_name);
 nfs_mark_for_revalidate(old_inode);
out:
 if (rehash)
  d_rehash(rehash);
 if (!error) {
  if (new_inode != ((void*)0))
   nfs_drop_nlink(new_inode);
  d_move(old_dentry, new_dentry);
  nfs_set_verifier(new_dentry,
     nfs_save_change_attribute(new_dir));
 } else if (error == -ENOENT)
  nfs_dentry_handle_enoent(old_dentry);


 if (dentry)
  dput(dentry);
 return error;
}
