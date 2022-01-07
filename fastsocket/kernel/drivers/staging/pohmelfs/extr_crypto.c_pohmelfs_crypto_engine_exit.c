
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_crypto_engine {int data; scalar_t__ cipher; scalar_t__ hash; } ;


 int crypto_free_ablkcipher (scalar_t__) ;
 int crypto_free_hash (scalar_t__) ;
 int kfree (int ) ;

void pohmelfs_crypto_engine_exit(struct pohmelfs_crypto_engine *e)
{
 if (e->hash)
  crypto_free_hash(e->hash);
 if (e->cipher)
  crypto_free_ablkcipher(e->cipher);
 kfree(e->data);
}
