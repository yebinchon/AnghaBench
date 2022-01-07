
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct aead_givcrypt_request {int dummy; } ;


 scalar_t__ PTR_ALIGN (int *,int ) ;
 int aead_givcrypt_set_tfm (struct aead_givcrypt_request*,struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline struct aead_givcrypt_request *esp_tmp_givreq(
 struct crypto_aead *aead, u8 *iv)
{
 struct aead_givcrypt_request *req;

 req = (void *)PTR_ALIGN(iv + crypto_aead_ivsize(aead),
    crypto_tfm_ctx_alignment());
 aead_givcrypt_set_tfm(req, aead);
 return req;
}
