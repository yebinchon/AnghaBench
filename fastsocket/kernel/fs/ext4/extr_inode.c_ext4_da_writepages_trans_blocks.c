
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_reserved_data_blocks; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAX_TRANS_DATA ;
 int ext4_chunk_trans_blocks (struct inode*,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int ext4_da_writepages_trans_blocks(struct inode *inode)
{
 int max_blocks = EXT4_I(inode)->i_reserved_data_blocks;







 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) &&
     (max_blocks > EXT4_MAX_TRANS_DATA))
  max_blocks = EXT4_MAX_TRANS_DATA;

 return ext4_chunk_trans_blocks(inode, max_blocks);
}
