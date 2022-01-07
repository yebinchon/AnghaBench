
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 unsigned long EXT3_DATA_TRANS_BLOCKS (TYPE_1__*) ;
 unsigned long EXT3_MAX_TRANS_DATA ;

__attribute__((used)) static unsigned long blocks_for_truncate(struct inode *inode)
{
 unsigned long needed;

 needed = inode->i_blocks >> (inode->i_sb->s_blocksize_bits - 9);







 if (needed < 2)
  needed = 2;



 if (needed > EXT3_MAX_TRANS_DATA)
  needed = EXT3_MAX_TRANS_DATA;

 return EXT3_DATA_TRANS_BLOCKS(inode->i_sb) + needed;
}
