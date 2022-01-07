
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sysv_zone_t ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int SYSV_SB (struct super_block*) ;
 int bforget (struct buffer_head*) ;
 scalar_t__* block_end (struct buffer_head*) ;
 int block_to_cpu (int ,scalar_t__) ;
 int free_data (struct inode*,scalar_t__*,scalar_t__*) ;
 int mark_inode_dirty (struct inode*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int sysv_free_block (struct super_block*,scalar_t__) ;

__attribute__((used)) static void free_branches(struct inode *inode, sysv_zone_t *p, sysv_zone_t *q, int depth)
{
 struct buffer_head * bh;
 struct super_block *sb = inode->i_sb;

 if (depth--) {
  for ( ; p < q ; p++) {
   int block;
   sysv_zone_t nr = *p;
   if (!nr)
    continue;
   *p = 0;
   block = block_to_cpu(SYSV_SB(sb), nr);
   bh = sb_bread(sb, block);
   if (!bh)
    continue;
   free_branches(inode, (sysv_zone_t*)bh->b_data,
     block_end(bh), depth);
   bforget(bh);
   sysv_free_block(sb, nr);
   mark_inode_dirty(inode);
  }
 } else
  free_data(inode, p, q);
}
