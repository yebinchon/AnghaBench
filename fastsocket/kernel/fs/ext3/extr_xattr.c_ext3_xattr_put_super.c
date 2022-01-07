
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;


 int mb_cache_shrink (int ) ;

void
ext3_xattr_put_super(struct super_block *sb)
{
 mb_cache_shrink(sb->s_bdev);
}
