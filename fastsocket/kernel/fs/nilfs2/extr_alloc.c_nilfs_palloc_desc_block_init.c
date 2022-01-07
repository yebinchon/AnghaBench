
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_group_desc {int pg_nfrees; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __le32 ;


 int bh_offset (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int nilfs_palloc_entries_per_group (struct inode*) ;
 unsigned long nilfs_palloc_groups_per_desc_block (struct inode*) ;

__attribute__((used)) static void nilfs_palloc_desc_block_init(struct inode *inode,
      struct buffer_head *bh, void *kaddr)
{
 struct nilfs_palloc_group_desc *desc = kaddr + bh_offset(bh);
 unsigned long n = nilfs_palloc_groups_per_desc_block(inode);
 __le32 nfrees;

 nfrees = cpu_to_le32(nilfs_palloc_entries_per_group(inode));
 while (n-- > 0) {
  desc->pg_nfrees = nfrees;
  desc++;
 }
}
