
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_auth {int alg_key_len; int alg_key; int alg_name; } ;
struct xfrm_algo {int alg_key_len; int alg_key; int alg_name; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int XFRMA_ALG_AUTH ;
 int memcpy (int ,int ,int) ;
 struct xfrm_algo* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int copy_to_user_auth(struct xfrm_algo_auth *auth, struct sk_buff *skb)
{
 struct xfrm_algo *algo;
 struct nlattr *nla;

 nla = nla_reserve(skb, XFRMA_ALG_AUTH,
     sizeof(*algo) + (auth->alg_key_len + 7) / 8);
 if (!nla)
  return -EMSGSIZE;

 algo = nla_data(nla);
 strncpy(algo->alg_name, auth->alg_name, sizeof(algo->alg_name));
 memcpy(algo->alg_key, auth->alg_key, (auth->alg_key_len + 7) / 8);
 algo->alg_key_len = auth->alg_key_len;

 return 0;
}
