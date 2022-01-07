
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_nlink; int i_ctime; int i_atime; int i_mtime; int i_ino; int i_gid; int i_uid; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int i_extcnt; int i_ext_last; scalar_t__ i_pa_cnt; scalar_t__ i_lastalloc; scalar_t__ i_protect; scalar_t__ mmu_private; int * i_ext_bh; int * i_ac; scalar_t__ i_lc_mask; scalar_t__ i_lc_shift; scalar_t__ i_lc_size; int * i_lc; scalar_t__ i_blkcnt; int i_opencnt; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int CURRENT_TIME_SEC ;
 int affs_alloc_block (struct inode*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_free_block (struct super_block*,int ) ;
 struct buffer_head* affs_getzeroblk (struct super_block*,int ) ;
 int atomic_set (int *,int ) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 struct inode* new_inode (struct super_block*) ;

struct inode *
affs_new_inode(struct inode *dir)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode;
 u32 block;
 struct buffer_head *bh;

 if (!(inode = new_inode(sb)))
  goto err_inode;

 if (!(block = affs_alloc_block(dir, dir->i_ino)))
  goto err_block;

 bh = affs_getzeroblk(sb, block);
 if (!bh)
  goto err_bh;
 mark_buffer_dirty_inode(bh, inode);
 affs_brelse(bh);

 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_ino = block;
 inode->i_nlink = 1;
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
 atomic_set(&AFFS_I(inode)->i_opencnt, 0);
 AFFS_I(inode)->i_blkcnt = 0;
 AFFS_I(inode)->i_lc = ((void*)0);
 AFFS_I(inode)->i_lc_size = 0;
 AFFS_I(inode)->i_lc_shift = 0;
 AFFS_I(inode)->i_lc_mask = 0;
 AFFS_I(inode)->i_ac = ((void*)0);
 AFFS_I(inode)->i_ext_bh = ((void*)0);
 AFFS_I(inode)->mmu_private = 0;
 AFFS_I(inode)->i_protect = 0;
 AFFS_I(inode)->i_lastalloc = 0;
 AFFS_I(inode)->i_pa_cnt = 0;
 AFFS_I(inode)->i_extcnt = 1;
 AFFS_I(inode)->i_ext_last = ~1;

 insert_inode_hash(inode);

 return inode;

err_bh:
 affs_free_block(sb, block);
err_block:
 iput(inode);
err_inode:
 return ((void*)0);
}
