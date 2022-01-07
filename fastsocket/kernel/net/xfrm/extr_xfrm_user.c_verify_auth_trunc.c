
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_auth {char* alg_name; } ;
struct nlattr {int dummy; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 size_t XFRMA_ALG_AUTH_TRUNC ;
 struct xfrm_algo_auth* nla_data (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 scalar_t__ xfrm_alg_auth_len (struct xfrm_algo_auth*) ;

__attribute__((used)) static int verify_auth_trunc(struct nlattr **attrs)
{
 struct nlattr *rt = attrs[XFRMA_ALG_AUTH_TRUNC];
 struct xfrm_algo_auth *algp;

 if (!rt)
  return 0;

 algp = nla_data(rt);
 if (nla_len(rt) < xfrm_alg_auth_len(algp))
  return -EINVAL;

 algp->alg_name[CRYPTO_MAX_ALG_NAME - 1] = '\0';
 return 0;
}
