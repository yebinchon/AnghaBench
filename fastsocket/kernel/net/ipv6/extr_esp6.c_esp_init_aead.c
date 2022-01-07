
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* aead; struct esp_data* data; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int alg_key_len; int alg_icv_len; int alg_key; int alg_name; } ;


 scalar_t__ IS_ERR (struct crypto_aead*) ;
 int PTR_ERR (struct crypto_aead*) ;
 int crypto_aead_setauthsize (struct crypto_aead*,int) ;
 int crypto_aead_setkey (struct crypto_aead*,int ,int) ;
 struct crypto_aead* crypto_alloc_aead (int ,int ,int ) ;

__attribute__((used)) static int esp_init_aead(struct xfrm_state *x)
{
 struct esp_data *esp = x->data;
 struct crypto_aead *aead;
 int err;

 aead = crypto_alloc_aead(x->aead->alg_name, 0, 0);
 err = PTR_ERR(aead);
 if (IS_ERR(aead))
  goto error;

 esp->aead = aead;

 err = crypto_aead_setkey(aead, x->aead->alg_key,
     (x->aead->alg_key_len + 7) / 8);
 if (err)
  goto error;

 err = crypto_aead_setauthsize(aead, x->aead->alg_icv_len / 8);
 if (err)
  goto error;

error:
 return err;
}
