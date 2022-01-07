
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biovec_slab {int slab; } ;
struct bio_set {int bvec_pool; } ;


 int BIOVEC_MAX_IDX ;
 int ENOMEM ;
 struct biovec_slab* bvec_slabs ;
 int mempool_create_slab_pool (int,int ) ;

__attribute__((used)) static int biovec_create_pools(struct bio_set *bs, int pool_entries)
{
 struct biovec_slab *bp = bvec_slabs + BIOVEC_MAX_IDX;

 bs->bvec_pool = mempool_create_slab_pool(pool_entries, bp->slab);
 if (!bs->bvec_pool)
  return -ENOMEM;

 return 0;
}
