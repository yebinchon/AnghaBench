
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_ext_cache {scalar_t__ ec_len; int ec_start; int ec_block; } ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_block_reservation_lock; struct ext4_ext_cache i_cached_extent; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int ext_debug (char*,int ,int ,scalar_t__,int ) ;
 scalar_t__ in_range (int ,int ,scalar_t__) ;
 int memcpy (struct ext4_ext_cache*,struct ext4_ext_cache*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ext4_ext_check_cache(struct inode *inode, ext4_lblk_t block,
 struct ext4_ext_cache *ex){
 struct ext4_ext_cache *cex;
 int ret = 0;




 spin_lock(&EXT4_I(inode)->i_block_reservation_lock);
 cex = &EXT4_I(inode)->i_cached_extent;


 if (cex->ec_len == 0)
  goto errout;

 if (in_range(block, cex->ec_block, cex->ec_len)) {
  memcpy(ex, cex, sizeof(struct ext4_ext_cache));
  ext_debug("%u cached by %u:%u:%llu\n",
    block,
    cex->ec_block, cex->ec_len, cex->ec_start);
  ret = 1;
 }
errout:
 spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);
 return ret;
}
