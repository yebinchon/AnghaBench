
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_ext_cache {int ec_start; scalar_t__ ec_len; int ec_block; } ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int i_block_reservation_lock; struct ext4_ext_cache i_cached_extent; } ;


 int BUG_ON (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
ext4_ext_put_in_cache(struct inode *inode, ext4_lblk_t block,
   __u32 len, ext4_fsblk_t start)
{
 struct ext4_ext_cache *cex;
 BUG_ON(len == 0);
 spin_lock(&EXT4_I(inode)->i_block_reservation_lock);
 cex = &EXT4_I(inode)->i_cached_extent;
 cex->ec_block = block;
 cex->ec_len = len;
 cex->ec_start = start;
 spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);
}
