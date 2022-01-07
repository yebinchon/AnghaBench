
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_atime; int i_mtime; struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int clear_nlink (struct inode*) ;
 int fat_detach (struct inode*) ;
 int fat_remove_entries (struct inode*,struct fat_slot_info*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;
 int vfat_find (struct inode*,int *,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 struct super_block *sb = dir->i_sb;
 struct fat_slot_info sinfo;
 int err;

 lock_super(sb);

 err = vfat_find(dir, &dentry->d_name, &sinfo);
 if (err)
  goto out;

 err = fat_remove_entries(dir, &sinfo);
 if (err)
  goto out;
 clear_nlink(inode);
 inode->i_mtime = inode->i_atime = CURRENT_TIME_SEC;
 fat_detach(inode);
out:
 unlock_super(sb);

 return err;
}
