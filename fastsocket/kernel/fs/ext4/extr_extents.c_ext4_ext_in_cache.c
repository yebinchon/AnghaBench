
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_len; int ee_block; } ;
struct ext4_ext_cache {int ec_len; int ec_start; int ec_block; } ;
typedef int ext4_lblk_t ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int ext4_ext_check_cache (struct inode*,int ,struct ext4_ext_cache*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;

__attribute__((used)) static int
ext4_ext_in_cache(struct inode *inode, ext4_lblk_t block,
   struct ext4_extent *ex)
{
 struct ext4_ext_cache cex;
 int ret = 0;

 ret = ext4_ext_check_cache(inode, block, &cex);
 if (ret) {
  ex->ee_block = cpu_to_le32(cex.ec_block);
  ext4_ext_store_pblock(ex, cex.ec_start);
  ex->ee_len = cpu_to_le16(cex.ec_len);
 }

 return ret;
}
