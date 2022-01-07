
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio_set {unsigned int front_pad; int bio_pool; int bio_slab; } ;


 int BIO_INLINE_VECS ;
 int GFP_KERNEL ;
 int bio_find_or_create_slab (unsigned int) ;
 int bioset_free (struct bio_set*) ;
 int biovec_create_pools (struct bio_set*,unsigned int) ;
 int kfree (struct bio_set*) ;
 struct bio_set* kzalloc (int,int ) ;
 int mempool_create_slab_pool (unsigned int,int ) ;

struct bio_set *bioset_create(unsigned int pool_size, unsigned int front_pad)
{
 unsigned int back_pad = BIO_INLINE_VECS * sizeof(struct bio_vec);
 struct bio_set *bs;

 bs = kzalloc(sizeof(*bs), GFP_KERNEL);
 if (!bs)
  return ((void*)0);

 bs->front_pad = front_pad;

 bs->bio_slab = bio_find_or_create_slab(front_pad + back_pad);
 if (!bs->bio_slab) {
  kfree(bs);
  return ((void*)0);
 }

 bs->bio_pool = mempool_create_slab_pool(pool_size, bs->bio_slab);
 if (!bs->bio_pool)
  goto bad;

 if (!biovec_create_pools(bs, pool_size))
  return bs;

bad:
 bioset_free(bs);
 return ((void*)0);
}
