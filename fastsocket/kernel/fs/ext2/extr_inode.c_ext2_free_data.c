
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ __le32 ;


 int ext2_free_blocks (struct inode*,unsigned long,unsigned long) ;
 unsigned long le32_to_cpu (scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static inline void ext2_free_data(struct inode *inode, __le32 *p, __le32 *q)
{
 unsigned long block_to_free = 0, count = 0;
 unsigned long nr;

 for ( ; p < q ; p++) {
  nr = le32_to_cpu(*p);
  if (nr) {
   *p = 0;

   if (count == 0)
    goto free_this;
   else if (block_to_free == nr - count)
    count++;
   else {
    mark_inode_dirty(inode);
    ext2_free_blocks (inode, block_to_free, count);
   free_this:
    block_to_free = nr;
    count = 1;
   }
  }
 }
 if (count > 0) {
  mark_inode_dirty(inode);
  ext2_free_blocks (inode, block_to_free, count);
 }
}
