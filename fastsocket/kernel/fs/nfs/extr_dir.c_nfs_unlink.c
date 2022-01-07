
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; } ;
struct dentry {int d_lock; int d_inode; int d_count; TYPE_2__ d_name; } ;
struct TYPE_3__ {int s_id; } ;


 int ENOENT ;
 int VFS ;
 int __d_drop (struct dentry*) ;
 int atomic_read (int *) ;
 int d_rehash (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int dfprintk (int ,char*,int ,int ,int ) ;
 int nfs_safe_remove (struct dentry*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int nfs_sillyrename (struct inode*,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_inode_now (int ,int ) ;

__attribute__((used)) static int nfs_unlink(struct inode *dir, struct dentry *dentry)
{
 int error;
 int need_rehash = 0;

 dfprintk(VFS, "NFS: unlink(%s/%ld, %s)\n", dir->i_sb->s_id,
  dir->i_ino, dentry->d_name.name);

 spin_lock(&dcache_lock);
 spin_lock(&dentry->d_lock);
 if (atomic_read(&dentry->d_count) > 1) {
  spin_unlock(&dentry->d_lock);
  spin_unlock(&dcache_lock);

  write_inode_now(dentry->d_inode, 0);
  error = nfs_sillyrename(dir, dentry);
  return error;
 }
 if (!d_unhashed(dentry)) {
  __d_drop(dentry);
  need_rehash = 1;
 }
 spin_unlock(&dentry->d_lock);
 spin_unlock(&dcache_lock);
 error = nfs_safe_remove(dentry);
 if (!error || error == -ENOENT) {
  nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 } else if (need_rehash)
  d_rehash(dentry);
 return error;
}
