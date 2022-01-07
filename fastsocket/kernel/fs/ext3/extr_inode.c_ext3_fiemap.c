
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;


 int ext3_get_block ;
 int generic_block_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ,int ) ;

int ext3_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
  u64 start, u64 len)
{
 return generic_block_fiemap(inode, fieinfo, start, len,
        ext3_get_block);
}
