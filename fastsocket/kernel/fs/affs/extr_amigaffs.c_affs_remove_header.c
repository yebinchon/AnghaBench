
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_nlink; int i_ctime; int i_ino; struct super_block* i_sb; } ;
struct dentry {scalar_t__ d_fsdata; struct inode* d_inode; TYPE_1__* d_parent; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int stype; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 TYPE_2__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int CURRENT_TIME_SEC ;
 int EIO ;
 int ENOENT ;

 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_empty_dir (struct inode*) ;
 int affs_lock_dir (struct inode*) ;
 int affs_lock_link (struct inode*) ;
 int affs_remove_hash (struct inode*,struct buffer_head*) ;
 int affs_remove_link (struct dentry*) ;
 int affs_unlock_dir (struct inode*) ;
 int affs_unlock_link (struct inode*) ;
 int be32_to_cpu (int ) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int pr_debug (char*,int ) ;

int
affs_remove_header(struct dentry *dentry)
{
 struct super_block *sb;
 struct inode *inode, *dir;
 struct buffer_head *bh = ((void*)0);
 int retval;

 dir = dentry->d_parent->d_inode;
 sb = dir->i_sb;

 retval = -ENOENT;
 inode = dentry->d_inode;
 if (!inode)
  goto done;

 pr_debug("AFFS: remove_header(key=%ld)\n", inode->i_ino);
 retval = -EIO;
 bh = affs_bread(sb, (u32)(long)dentry->d_fsdata);
 if (!bh)
  goto done;

 affs_lock_link(inode);
 affs_lock_dir(dir);
 switch (be32_to_cpu(AFFS_TAIL(sb, bh)->stype)) {
 case 128:




  affs_lock_dir(inode);
  retval = affs_empty_dir(inode);
  affs_unlock_dir(inode);
  if (retval)
   goto done_unlock;
  break;
 default:
  break;
 }

 retval = affs_remove_hash(dir, bh);
 if (retval)
  goto done_unlock;
 mark_buffer_dirty_inode(bh, inode);

 affs_unlock_dir(dir);

 if (inode->i_nlink > 1)
  retval = affs_remove_link(dentry);
 else
  inode->i_nlink = 0;
 affs_unlock_link(inode);
 inode->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);

done:
 affs_brelse(bh);
 return retval;

done_unlock:
 affs_unlock_dir(dir);
 affs_unlock_link(inode);
 goto done;
}
