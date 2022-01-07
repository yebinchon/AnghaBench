
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ufs_sb_private_info {scalar_t__ fs_magic; int s_sbbase; int s_fpb; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ctime; int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef scalar_t__ sector_t ;
typedef int __fs64 ;
typedef int __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int CURRENT_TIME_SEC ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int READ ;
 scalar_t__ UFS2_MAGIC ;
 int UFSD (char*,...) ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int fs32_to_cpu (struct super_block*,int ) ;
 int fs64_to_cpu (struct super_block*,int ) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int ufs_blknum (scalar_t__) ;
 int ufs_data_ptr_to_cpu (struct super_block*,void*) ;
 unsigned int ufs_fragnum (int) ;
 int ufs_fragstoblks (int) ;
 int ufs_new_fragments (struct inode*,void*,int ,int,int,int*,struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
ufs_inode_getblock(struct inode *inode, struct buffer_head *bh,
    u64 fragment, sector_t new_fragment, int *err,
    long *phys, int *new, struct page *locked_page)
{
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 struct buffer_head * result;
 unsigned blockoff;
 u64 tmp, goal, block;
 void *p;

 block = ufs_fragstoblks (fragment);
 blockoff = ufs_fragnum (fragment);

 UFSD("ENTER, ino %lu, fragment %llu, new_fragment %llu, metadata %d\n",
      inode->i_ino, (unsigned long long)fragment,
      (unsigned long long)new_fragment, !phys);

 result = ((void*)0);
 if (!bh)
  goto out;
 if (!buffer_uptodate(bh)) {
  ll_rw_block (READ, 1, &bh);
  wait_on_buffer (bh);
  if (!buffer_uptodate(bh))
   goto out;
 }
 if (uspi->fs_magic == UFS2_MAGIC)
  p = (__fs64 *)bh->b_data + block;
 else
  p = (__fs32 *)bh->b_data + block;
repeat:
 tmp = ufs_data_ptr_to_cpu(sb, p);
 if (tmp) {
  if (!phys) {
   result = sb_getblk(sb, uspi->s_sbbase + tmp + blockoff);
   if (tmp == ufs_data_ptr_to_cpu(sb, p))
    goto out;
   brelse (result);
   goto repeat;
  } else {
   *phys = uspi->s_sbbase + tmp + blockoff;
   goto out;
  }
 }

 if (block && (uspi->fs_magic == UFS2_MAGIC ?
        (tmp = fs64_to_cpu(sb, ((__fs64 *)bh->b_data)[block-1])) :
        (tmp = fs32_to_cpu(sb, ((__fs32 *)bh->b_data)[block-1]))))
  goal = tmp + uspi->s_fpb;
 else
  goal = bh->b_blocknr + uspi->s_fpb;
 tmp = ufs_new_fragments(inode, p, ufs_blknum(new_fragment), goal,
    uspi->s_fpb, err, locked_page);
 if (!tmp) {
  if (ufs_data_ptr_to_cpu(sb, p))
   goto repeat;
  goto out;
 }


 if (!phys) {
  result = sb_getblk(sb, uspi->s_sbbase + tmp + blockoff);
 } else {
  *phys = uspi->s_sbbase + tmp + blockoff;
  *new = 1;
 }

 mark_buffer_dirty(bh);
 if (IS_SYNC(inode))
  sync_dirty_buffer(bh);
 inode->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);
 UFSD("result %llu\n", (unsigned long long)tmp + blockoff);
out:
 brelse (bh);
 UFSD("EXIT\n");
 return result;
}
