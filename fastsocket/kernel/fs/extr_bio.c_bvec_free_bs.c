
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biovec_slab {int slab; } ;
struct bio_vec {int dummy; } ;
struct bio_set {int bvec_pool; } ;


 unsigned int BIOVEC_MAX_IDX ;
 unsigned int BIOVEC_NR_POOLS ;
 int BIO_BUG_ON (int) ;
 struct biovec_slab* bvec_slabs ;
 int kmem_cache_free (int ,struct bio_vec*) ;
 int mempool_free (struct bio_vec*,int ) ;

void bvec_free_bs(struct bio_set *bs, struct bio_vec *bv, unsigned int idx)
{
 BIO_BUG_ON(idx >= BIOVEC_NR_POOLS);

 if (idx == BIOVEC_MAX_IDX)
  mempool_free(bv, bs->bvec_pool);
 else {
  struct biovec_slab *bvs = bvec_slabs + idx;

  kmem_cache_free(bvs->slab, bv);
 }
}
