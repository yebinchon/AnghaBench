
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_engine {int data; scalar_t__ cipher; scalar_t__ hash; } ;


 int crypto_free_ablkcipher (scalar_t__) ;
 int crypto_free_hash (scalar_t__) ;
 int dst_crypto_pages_free (struct dst_crypto_engine*) ;
 int kfree (int ) ;

__attribute__((used)) static void dst_crypto_engine_exit(struct dst_crypto_engine *e)
{
 if (e->hash)
  crypto_free_hash(e->hash);
 if (e->cipher)
  crypto_free_ablkcipher(e->cipher);
 dst_crypto_pages_free(e);
 kfree(e->data);
}
