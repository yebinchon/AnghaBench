
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ctime; struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int clear_nlink (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int fat_detach (struct inode*) ;
 int fat_dir_empty (struct inode*) ;
 int fat_flush_inodes (struct super_block*,struct inode*,struct inode*) ;
 int fat_remove_entries (struct inode*,struct fat_slot_info*) ;
 int lock_super (struct super_block*) ;
 int msdos_find (struct inode*,int ,int ,struct fat_slot_info*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int msdos_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode = dentry->d_inode;
 struct fat_slot_info sinfo;
 int err;

 lock_super(sb);




 err = fat_dir_empty(inode);
 if (err)
  goto out;
 err = msdos_find(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
 if (err)
  goto out;

 err = fat_remove_entries(dir, &sinfo);
 if (err)
  goto out;
 drop_nlink(dir);

 clear_nlink(inode);
 inode->i_ctime = CURRENT_TIME_SEC;
 fat_detach(inode);
out:
 unlock_super(sb);
 if (!err)
  err = fat_flush_inodes(sb, dir, inode);

 return err;
}
