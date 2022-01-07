
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int i_ino; } ;


 TYPE_3__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int EIO ;
 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_check_name (int ,scalar_t__) ;
 int affs_copy_name (int ,struct dentry*) ;
 int affs_fix_checksum (struct super_block*,struct buffer_head*) ;
 int affs_insert_hash (struct inode*,struct buffer_head*) ;
 int affs_lock_dir (struct inode*) ;
 int affs_remove_hash (struct inode*,struct buffer_head*) ;
 int affs_remove_header (struct dentry*) ;
 int affs_unlock_dir (struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int pr_debug (char*,int ,int,int ,int ,int,int ) ;

int
affs_rename(struct inode *old_dir, struct dentry *old_dentry,
     struct inode *new_dir, struct dentry *new_dentry)
{
 struct super_block *sb = old_dir->i_sb;
 struct buffer_head *bh = ((void*)0);
 int retval;

 pr_debug("AFFS: rename(old=%u,\"%*s\" to new=%u,\"%*s\")\n",
   (u32)old_dir->i_ino, (int)old_dentry->d_name.len, old_dentry->d_name.name,
   (u32)new_dir->i_ino, (int)new_dentry->d_name.len, new_dentry->d_name.name);

 retval = affs_check_name(new_dentry->d_name.name,new_dentry->d_name.len);
 if (retval)
  return retval;


 if (new_dentry->d_inode) {
  retval = affs_remove_header(new_dentry);
  if (retval)
   return retval;
 }

 bh = affs_bread(sb, old_dentry->d_inode->i_ino);
 if (!bh)
  return -EIO;


 affs_lock_dir(old_dir);
 retval = affs_remove_hash(old_dir, bh);
 affs_unlock_dir(old_dir);
 if (retval)
  goto done;


 affs_copy_name(AFFS_TAIL(sb, bh)->name, new_dentry);
 affs_fix_checksum(sb, bh);
 affs_lock_dir(new_dir);
 retval = affs_insert_hash(new_dir, bh);
 affs_unlock_dir(new_dir);


done:
 mark_buffer_dirty_inode(bh, retval ? old_dir : new_dir);
 affs_brelse(bh);
 return retval;
}
