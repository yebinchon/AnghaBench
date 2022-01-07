
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bvec_pool; } ;


 int mempool_destroy (int ) ;

__attribute__((used)) static void biovec_free_pools(struct bio_set *bs)
{
 mempool_destroy(bs->bvec_pool);
}
