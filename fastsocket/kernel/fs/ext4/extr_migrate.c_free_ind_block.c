
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;
typedef scalar_t__ __le32 ;


 int EXT4_FREE_BLOCKS_METADATA ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int extend_credit_for_blkdel (int *,struct inode*) ;
 int free_dind_blocks (int *,struct inode*,scalar_t__) ;
 int free_tind_blocks (int *,struct inode*,scalar_t__) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static int free_ind_block(handle_t *handle, struct inode *inode, __le32 *i_data)
{
 int retval;


 if (i_data[0]) {
  extend_credit_for_blkdel(handle, inode);
  ext4_free_blocks(handle, inode,
    le32_to_cpu(i_data[0]), 1,
    EXT4_FREE_BLOCKS_METADATA);
 }


 if (i_data[1]) {
  retval = free_dind_blocks(handle, inode, i_data[1]);
  if (retval)
   return retval;
 }


 if (i_data[2]) {
  retval = free_tind_blocks(handle, inode, i_data[2]);
  if (retval)
   return retval;
 }
 return 0;
}
