
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext2_inode_info {int i_block_group; scalar_t__* i_data; } ;
typedef int ext2_fsblk_t ;
typedef scalar_t__ __le32 ;
struct TYPE_7__ {int pid; } ;
struct TYPE_6__ {TYPE_1__* bh; scalar_t__* p; } ;
struct TYPE_5__ {int b_blocknr; scalar_t__ b_data; } ;
typedef TYPE_2__ Indirect ;


 int EXT2_BLOCKS_PER_GROUP (int ) ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 TYPE_4__* current ;
 int ext2_group_first_block_no (int ,int ) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static ext2_fsblk_t ext2_find_near(struct inode *inode, Indirect *ind)
{
 struct ext2_inode_info *ei = EXT2_I(inode);
 __le32 *start = ind->bh ? (__le32 *) ind->bh->b_data : ei->i_data;
 __le32 *p;
 ext2_fsblk_t bg_start;
 ext2_fsblk_t colour;


 for (p = ind->p - 1; p >= start; p--)
  if (*p)
   return le32_to_cpu(*p);


 if (ind->bh)
  return ind->bh->b_blocknr;





 bg_start = ext2_group_first_block_no(inode->i_sb, ei->i_block_group);
 colour = (current->pid % 16) *
   (EXT2_BLOCKS_PER_GROUP(inode->i_sb) / 16);
 return bg_start + colour;
}
