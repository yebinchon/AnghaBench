
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int b_sem; TYPE_1__* b_ops; } ;
typedef unsigned long __u64 ;
struct TYPE_2__ {int (* bop_last_key ) (struct nilfs_bmap*,unsigned long*) ;} ;


 int down_read (int *) ;
 int stub1 (struct nilfs_bmap*,unsigned long*) ;
 int up_read (int *) ;

int nilfs_bmap_last_key(struct nilfs_bmap *bmap, unsigned long *key)
{
 __u64 lastkey;
 int ret;

 down_read(&bmap->b_sem);
 ret = bmap->b_ops->bop_last_key(bmap, &lastkey);
 if (!ret)
  *key = lastkey;
 up_read(&bmap->b_sem);
 return ret;
}
