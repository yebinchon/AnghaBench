
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EXT4_ADDR_PER_BLOCK (int ) ;

__attribute__((used)) static int ext4_indirect_trans_blocks(struct inode *inode, int nrblocks,
          int chunk)
{
 int indirects;


 if (chunk) {






  indirects = nrblocks / EXT4_ADDR_PER_BLOCK(inode->i_sb);
  return indirects + 3;
 }





 indirects = nrblocks * 2 + 1;
 return indirects;
}
