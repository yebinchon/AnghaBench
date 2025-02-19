
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {int s_blocksize; } ;


 int EIO ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int extend_credit_for_blkdel (int *,struct inode*) ;
 int free_dind_blocks (int *,struct inode*,scalar_t__) ;
 int le32_to_cpu (scalar_t__) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_bread (TYPE_1__*,int ) ;

__attribute__((used)) static int free_tind_blocks(handle_t *handle,
    struct inode *inode, __le32 i_data)
{
 int i, retval = 0;
 __le32 *tmp_idata;
 struct buffer_head *bh;
 unsigned long max_entries = inode->i_sb->s_blocksize >> 2;

 bh = sb_bread(inode->i_sb, le32_to_cpu(i_data));
 if (!bh)
  return -EIO;

 tmp_idata = (__le32 *)bh->b_data;
 for (i = 0; i < max_entries; i++) {
  if (tmp_idata[i]) {
   retval = free_dind_blocks(handle,
     inode, tmp_idata[i]);
   if (retval) {
    put_bh(bh);
    return retval;
   }
  }
 }
 put_bh(bh);
 extend_credit_for_blkdel(handle, inode);
 ext4_free_blocks(handle, inode, le32_to_cpu(i_data), 1,
    EXT4_FREE_BLOCKS_METADATA);
 return 0;
}
