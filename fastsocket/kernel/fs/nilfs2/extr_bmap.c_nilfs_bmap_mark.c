
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int b_sem; TYPE_1__* b_ops; } ;
typedef int __u64 ;
struct TYPE_2__ {int (* bop_mark ) (struct nilfs_bmap*,int ,int) ;} ;


 int down_write (int *) ;
 int stub1 (struct nilfs_bmap*,int ,int) ;
 int up_write (int *) ;

int nilfs_bmap_mark(struct nilfs_bmap *bmap, __u64 key, int level)
{
 int ret;

 if (bmap->b_ops->bop_mark == ((void*)0))
  return 0;

 down_write(&bmap->b_sem);
 ret = bmap->b_ops->bop_mark(bmap, key, level);
 up_write(&bmap->b_sem);
 return ret;
}
