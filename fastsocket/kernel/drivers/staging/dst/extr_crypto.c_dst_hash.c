
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_desc {scalar_t__ flags; int tfm; } ;
struct dst_crypto_engine {int hash; struct hash_desc* data; } ;
struct bio {int dummy; } ;


 int crypto_hash_final (struct hash_desc*,void*) ;
 int crypto_hash_init (struct hash_desc*) ;
 int dst_hash_iterator ;
 int dst_trans_iter_in (struct bio*,struct dst_crypto_engine*,int ) ;

__attribute__((used)) static int dst_hash(struct dst_crypto_engine *e, struct bio *bio, void *dst)
{
 struct hash_desc *desc = e->data;
 int err;

 desc->tfm = e->hash;
 desc->flags = 0;

 err = crypto_hash_init(desc);
 if (err)
  return err;

 err = dst_trans_iter_in(bio, e, dst_hash_iterator);
 if (err)
  return err;

 err = crypto_hash_final(desc, dst);
 if (err)
  return err;

 return 0;
}
