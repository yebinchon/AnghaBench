
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {unsigned long i_blocks; int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {unsigned long si_blocks; unsigned long si_lf_eblk; int bfs_lock; int si_freeb; struct buffer_head* si_sbh; } ;
struct bfs_inode_info {unsigned long i_sblock; unsigned long i_eblock; } ;
typedef unsigned long sector_t ;


 struct bfs_inode_info* BFS_I (struct inode*) ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int ENOSPC ;
 int bfs_move_blocks (struct super_block*,long,unsigned long,unsigned long) ;
 int dprintf (char*,int,...) ;
 int map_bh (struct buffer_head*,struct super_block*,unsigned long) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bfs_get_block(struct inode *inode, sector_t block,
   struct buffer_head *bh_result, int create)
{
 unsigned long phys;
 int err;
 struct super_block *sb = inode->i_sb;
 struct bfs_sb_info *info = BFS_SB(sb);
 struct bfs_inode_info *bi = BFS_I(inode);
 struct buffer_head *sbh = info->si_sbh;

 phys = bi->i_sblock + block;
 if (!create) {
  if (phys <= bi->i_eblock) {
   dprintf("c=%d, b=%08lx, phys=%09lx (granted)\n",
                                create, (unsigned long)block, phys);
   map_bh(bh_result, sb, phys);
  }
  return 0;
 }





 if (bi->i_sblock && (phys <= bi->i_eblock)) {
  dprintf("c=%d, b=%08lx, phys=%08lx (interim block granted)\n",
    create, (unsigned long)block, phys);
  map_bh(bh_result, sb, phys);
  return 0;
 }


 if (phys >= info->si_blocks)
  return -ENOSPC;


 mutex_lock(&info->bfs_lock);






 if (bi->i_eblock == info->si_lf_eblk) {
  dprintf("c=%d, b=%08lx, phys=%08lx (simple extension)\n",
    create, (unsigned long)block, phys);
  map_bh(bh_result, sb, phys);
  info->si_freeb -= phys - bi->i_eblock;
  info->si_lf_eblk = bi->i_eblock = phys;
  mark_inode_dirty(inode);
  mark_buffer_dirty(sbh);
  err = 0;
  goto out;
 }


 phys = info->si_lf_eblk + 1;
 if (phys + block >= info->si_blocks) {
  err = -ENOSPC;
  goto out;
 }

 if (bi->i_sblock) {
  err = bfs_move_blocks(inode->i_sb, bi->i_sblock,
      bi->i_eblock, phys);
  if (err) {
   dprintf("failed to move ino=%08lx -> fs corruption\n",
        inode->i_ino);
   goto out;
  }
 } else
  err = 0;

 dprintf("c=%d, b=%08lx, phys=%08lx (moved)\n",
                create, (unsigned long)block, phys);
 bi->i_sblock = phys;
 phys += block;
 info->si_lf_eblk = bi->i_eblock = phys;





 info->si_freeb -= bi->i_eblock - bi->i_sblock + 1 - inode->i_blocks;
 mark_inode_dirty(inode);
 mark_buffer_dirty(sbh);
 map_bh(bh_result, sb, phys);
out:
 mutex_unlock(&info->bfs_lock);
 return err;
}
