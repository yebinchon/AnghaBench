
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_ctl {scalar_t__* cipher_algo; scalar_t__* hash_algo; } ;
struct dst_node {int cipher_key; int hash_key; int max_pages; struct dst_crypto_ctl crypto; } ;
struct dst_crypto_engine {int data; int * hash; int * cipher; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int crypto_free_hash (int *) ;
 int dst_crypto_pages_alloc (struct dst_crypto_engine*,int ) ;
 int dst_crypto_pages_free (struct dst_crypto_engine*) ;
 int * dst_init_cipher (struct dst_crypto_ctl*,int ) ;
 int * dst_init_hash (struct dst_crypto_ctl*,int ) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;

__attribute__((used)) static int dst_crypto_engine_init(struct dst_crypto_engine *e, struct dst_node *n)
{
 int err;
 struct dst_crypto_ctl *ctl = &n->crypto;

 err = dst_crypto_pages_alloc(e, n->max_pages);
 if (err)
  goto err_out_exit;

 e->size = PAGE_SIZE;
 e->data = kmalloc(e->size, GFP_KERNEL);
 if (!e->data) {
  err = -ENOMEM;
  goto err_out_free_pages;
 }

 if (ctl->hash_algo[0]) {
  e->hash = dst_init_hash(ctl, n->hash_key);
  if (IS_ERR(e->hash)) {
   err = PTR_ERR(e->hash);
   e->hash = ((void*)0);
   goto err_out_free;
  }
 }

 if (ctl->cipher_algo[0]) {
  e->cipher = dst_init_cipher(ctl, n->cipher_key);
  if (IS_ERR(e->cipher)) {
   err = PTR_ERR(e->cipher);
   e->cipher = ((void*)0);
   goto err_out_free_hash;
  }
 }

 return 0;

err_out_free_hash:
 crypto_free_hash(e->hash);
err_out_free:
 kfree(e->data);
err_out_free_pages:
 dst_crypto_pages_free(e);
err_out_exit:
 return err;
}
