
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {struct ecryptfs_mount_crypt_stat mount_crypt_stat; } ;


 int d_drop (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_encrypt_and_encode_filename (char**,size_t*,int *,struct ecryptfs_mount_crypt_stat*,char const*,int ) ;
 int ecryptfs_interpose (struct dentry*,struct dentry*,int ,int ) ;
 TYPE_1__* ecryptfs_superblock_to_private (int ) ;
 int fsstack_copy_attr_times (struct inode*,int ) ;
 int fsstack_copy_inode_size (struct inode*,int ) ;
 int kfree (char*) ;
 struct dentry* lock_parent (struct dentry*) ;
 int strlen (char const*) ;
 int unlock_dir (struct dentry*) ;
 int vfs_symlink (int ,struct dentry*,char*) ;

__attribute__((used)) static int ecryptfs_symlink(struct inode *dir, struct dentry *dentry,
       const char *symname)
{
 int rc;
 struct dentry *lower_dentry;
 struct dentry *lower_dir_dentry;
 char *encoded_symname;
 size_t encoded_symlen;
 struct ecryptfs_mount_crypt_stat *mount_crypt_stat = ((void*)0);

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 dget(lower_dentry);
 lower_dir_dentry = lock_parent(lower_dentry);
 mount_crypt_stat = &ecryptfs_superblock_to_private(
  dir->i_sb)->mount_crypt_stat;
 rc = ecryptfs_encrypt_and_encode_filename(&encoded_symname,
        &encoded_symlen,
        ((void*)0),
        mount_crypt_stat, symname,
        strlen(symname));
 if (rc)
  goto out_lock;
 rc = vfs_symlink(lower_dir_dentry->d_inode, lower_dentry,
    encoded_symname);
 kfree(encoded_symname);
 if (rc || !lower_dentry->d_inode)
  goto out_lock;
 rc = ecryptfs_interpose(lower_dentry, dentry, dir->i_sb, 0);
 if (rc)
  goto out_lock;
 fsstack_copy_attr_times(dir, lower_dir_dentry->d_inode);
 fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
out_lock:
 unlock_dir(lower_dir_dentry);
 dput(lower_dentry);
 if (!dentry->d_inode)
  d_drop(dentry);
 return rc;
}
