
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;
struct xfrm_usersa_info {int family; int mode; TYPE_1__ id; } ;
struct nlattr {int dummy; } ;




 int EAFNOSUPPORT ;
 int EINVAL ;





 size_t XFRMA_ALG_AEAD ;
 size_t XFRMA_ALG_AUTH ;
 size_t XFRMA_ALG_AUTH_TRUNC ;
 size_t XFRMA_ALG_COMP ;
 size_t XFRMA_ALG_CRYPT ;
 size_t XFRMA_COADDR ;
 size_t XFRMA_ENCAP ;
 size_t XFRMA_SEC_CTX ;




 int verify_aead (struct nlattr**) ;
 int verify_auth_trunc (struct nlattr**) ;
 int verify_one_alg (struct nlattr**,size_t) ;
 int verify_sec_ctx_len (struct nlattr**) ;

__attribute__((used)) static int verify_newsa_info(struct xfrm_usersa_info *p,
        struct nlattr **attrs)
{
 int err;

 err = -EINVAL;
 switch (p->family) {
 case 138:
  break;

 case 137:



  err = -EAFNOSUPPORT;
  goto out;


 default:
  goto out;
 }

 err = -EINVAL;
 switch (p->id.proto) {
 case 136:
  if ((!attrs[XFRMA_ALG_AUTH] &&
       !attrs[XFRMA_ALG_AUTH_TRUNC]) ||
      attrs[XFRMA_ALG_AEAD] ||
      attrs[XFRMA_ALG_CRYPT] ||
      attrs[XFRMA_ALG_COMP])
   goto out;
  break;

 case 133:
  if (attrs[XFRMA_ALG_COMP])
   goto out;
  if (!attrs[XFRMA_ALG_AUTH] &&
      !attrs[XFRMA_ALG_AUTH_TRUNC] &&
      !attrs[XFRMA_ALG_CRYPT] &&
      !attrs[XFRMA_ALG_AEAD])
   goto out;
  if ((attrs[XFRMA_ALG_AUTH] ||
       attrs[XFRMA_ALG_AUTH_TRUNC] ||
       attrs[XFRMA_ALG_CRYPT]) &&
      attrs[XFRMA_ALG_AEAD])
   goto out;
  break;

 case 135:
  if (!attrs[XFRMA_ALG_COMP] ||
      attrs[XFRMA_ALG_AEAD] ||
      attrs[XFRMA_ALG_AUTH] ||
      attrs[XFRMA_ALG_AUTH_TRUNC] ||
      attrs[XFRMA_ALG_CRYPT])
   goto out;
  break;
 default:
  goto out;
 }

 if ((err = verify_aead(attrs)))
  goto out;
 if ((err = verify_auth_trunc(attrs)))
  goto out;
 if ((err = verify_one_alg(attrs, XFRMA_ALG_AUTH)))
  goto out;
 if ((err = verify_one_alg(attrs, XFRMA_ALG_CRYPT)))
  goto out;
 if ((err = verify_one_alg(attrs, XFRMA_ALG_COMP)))
  goto out;
 if ((err = verify_sec_ctx_len(attrs)))
  goto out;

 err = -EINVAL;
 switch (p->mode) {
 case 129:
 case 128:
 case 130:
 case 131:
  break;

 default:
  goto out;
 }

 err = 0;

out:
 return err;
}
