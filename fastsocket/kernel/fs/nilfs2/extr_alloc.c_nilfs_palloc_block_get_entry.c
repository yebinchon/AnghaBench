
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {unsigned long mi_entries_per_block; unsigned long mi_entry_size; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 int bh_offset (struct buffer_head const*) ;
 int nilfs_palloc_group (struct inode const*,int ,unsigned long*) ;

void *nilfs_palloc_block_get_entry(const struct inode *inode, __u64 nr,
       const struct buffer_head *bh, void *kaddr)
{
 unsigned long entry_offset, group_offset;

 nilfs_palloc_group(inode, nr, &group_offset);
 entry_offset = group_offset % NILFS_MDT(inode)->mi_entries_per_block;

 return kaddr + bh_offset(bh) +
  entry_offset * NILFS_MDT(inode)->mi_entry_size;
}
