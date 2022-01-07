
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int b_sem; TYPE_1__* b_ops; } ;
typedef int __u64 ;
struct TYPE_2__ {int (* bop_lookup_contig ) (struct nilfs_bmap*,int ,int *,unsigned int) ;} ;


 int down_read (int *) ;
 int stub1 (struct nilfs_bmap*,int ,int *,unsigned int) ;
 int up_read (int *) ;

int nilfs_bmap_lookup_contig(struct nilfs_bmap *bmap, __u64 key, __u64 *ptrp,
        unsigned maxblocks)
{
 int ret;

 down_read(&bmap->b_sem);
 ret = bmap->b_ops->bop_lookup_contig(bmap, key, ptrp, maxblocks);
 up_read(&bmap->b_sem);
 return ret;
}
