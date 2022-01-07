
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int b_sem; TYPE_1__* b_ops; } ;
typedef int sector_t ;
typedef int __u64 ;
struct TYPE_2__ {int (* bop_lookup ) (struct nilfs_bmap*,int ,int,int *) ;} ;


 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int down_read (int *) ;
 int nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_dat_translate (int ,int ,int *) ;
 int stub1 (struct nilfs_bmap*,int ,int,int *) ;
 int up_read (int *) ;

int nilfs_bmap_lookup_at_level(struct nilfs_bmap *bmap, __u64 key, int level,
          __u64 *ptrp)
{
 sector_t blocknr;
 int ret;

 down_read(&bmap->b_sem);
 ret = bmap->b_ops->bop_lookup(bmap, key, level, ptrp);
 if (ret < 0)
  goto out;
 if (NILFS_BMAP_USE_VBN(bmap)) {
  ret = nilfs_dat_translate(nilfs_bmap_get_dat(bmap), *ptrp,
       &blocknr);
  if (!ret)
   *ptrp = blocknr;
 }

 out:
 up_read(&bmap->b_sem);
 return ret;
}
