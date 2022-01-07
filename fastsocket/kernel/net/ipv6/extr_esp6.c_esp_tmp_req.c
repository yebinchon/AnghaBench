
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 scalar_t__ PTR_ALIGN (int *,int ) ;
 int aead_request_set_tfm (struct aead_request*,struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline struct aead_request *esp_tmp_req(struct crypto_aead *aead, u8 *iv)
{
 struct aead_request *req;

 req = (void *)PTR_ALIGN(iv + crypto_aead_ivsize(aead),
    crypto_tfm_ctx_alignment());
 aead_request_set_tfm(req, aead);
 return req;
}
