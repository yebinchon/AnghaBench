
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_checkpoint {int cp_checkpoints_count; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int WARN_ON (int) ;
 int bh_offset (struct buffer_head*) ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int
nilfs_cpfile_block_sub_valid_checkpoints(const struct inode *cpfile,
      struct buffer_head *bh,
      void *kaddr,
      unsigned int n)
{
 struct nilfs_checkpoint *cp = kaddr + bh_offset(bh);
 unsigned int count;

 WARN_ON(le32_to_cpu(cp->cp_checkpoints_count) < n);
 count = le32_to_cpu(cp->cp_checkpoints_count) - n;
 cp->cp_checkpoints_count = cpu_to_le32(count);
 return count;
}
