
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct block_device* s_bdev; } ;
struct block_device {int dummy; } ;



__attribute__((used)) static int test_gfs2_super(struct super_block *s, void *ptr)
{
 struct block_device *bdev = ptr;
 return (bdev == s->s_bdev);
}
