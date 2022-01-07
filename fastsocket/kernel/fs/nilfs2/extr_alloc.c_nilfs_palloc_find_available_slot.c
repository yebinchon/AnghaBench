
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 unsigned long BITS_PER_LONG ;
 int ENOSPC ;
 int nilfs_find_next_zero_bit (unsigned char*,int,int) ;
 int nilfs_mdt_bgl_lock (struct inode*,unsigned long) ;
 int nilfs_set_bit_atomic (int ,int,unsigned char*) ;

__attribute__((used)) static int nilfs_palloc_find_available_slot(struct inode *inode,
         unsigned long group,
         unsigned long target,
         unsigned char *bitmap,
         int bsize)
{
 int curr, pos, end, i;

 if (target > 0) {
  end = (target + BITS_PER_LONG - 1) & ~(BITS_PER_LONG - 1);
  if (end > bsize)
   end = bsize;
  pos = nilfs_find_next_zero_bit(bitmap, end, target);
  if (pos < end &&
      !nilfs_set_bit_atomic(
       nilfs_mdt_bgl_lock(inode, group), pos, bitmap))
   return pos;
 } else
  end = 0;

 for (i = 0, curr = end;
      i < bsize;
      i += BITS_PER_LONG, curr += BITS_PER_LONG) {

  if (curr >= bsize)
   curr = 0;
  while (*((unsigned long *)bitmap + curr / BITS_PER_LONG)
         != ~0UL) {
   end = curr + BITS_PER_LONG;
   if (end > bsize)
    end = bsize;
   pos = nilfs_find_next_zero_bit(bitmap, end, curr);
   if ((pos < end) &&
       !nilfs_set_bit_atomic(
        nilfs_mdt_bgl_lock(inode, group), pos,
        bitmap))
    return pos;
  }
 }
 return -ENOSPC;
}
