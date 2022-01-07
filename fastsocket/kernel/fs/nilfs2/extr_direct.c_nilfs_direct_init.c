
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int * b_ops; } ;


 int nilfs_direct_ops ;

int nilfs_direct_init(struct nilfs_bmap *bmap)
{
 bmap->b_ops = &nilfs_direct_ops;
 return 0;
}
