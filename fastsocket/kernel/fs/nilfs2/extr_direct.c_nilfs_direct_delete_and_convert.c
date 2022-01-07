
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {TYPE_1__* b_ops; } ;
typedef int __u64 ;
typedef int __le64 ;
struct TYPE_2__ {int (* bop_delete ) (struct nilfs_bmap*,int) ;int (* bop_clear ) (struct nilfs_bmap*) ;} ;


 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_DIRECT_NBLOCKS ;
 int nilfs_bmap_ptr_to_dptr (int) ;
 int * nilfs_direct_dptrs (struct nilfs_direct*) ;
 int nilfs_direct_init (struct nilfs_bmap*) ;
 int stub1 (struct nilfs_bmap*,int) ;
 int stub2 (struct nilfs_bmap*) ;

int nilfs_direct_delete_and_convert(struct nilfs_bmap *bmap,
        __u64 key, __u64 *keys, __u64 *ptrs, int n)
{
 struct nilfs_direct *direct;
 __le64 *dptrs;
 int ret, i, j;




 ret = bmap->b_ops->bop_delete(bmap, key);
 if (ret < 0)
  return ret;


 if (bmap->b_ops->bop_clear != ((void*)0))
  bmap->b_ops->bop_clear(bmap);


 direct = (struct nilfs_direct *)bmap;
 dptrs = nilfs_direct_dptrs(direct);
 for (i = 0, j = 0; i < NILFS_DIRECT_NBLOCKS; i++) {
  if ((j < n) && (i == keys[j])) {
   dptrs[i] = (i != key) ?
    nilfs_bmap_ptr_to_dptr(ptrs[j]) :
    NILFS_BMAP_INVALID_PTR;
   j++;
  } else
   dptrs[i] = NILFS_BMAP_INVALID_PTR;
 }

 nilfs_direct_init(bmap);
 return 0;
}
