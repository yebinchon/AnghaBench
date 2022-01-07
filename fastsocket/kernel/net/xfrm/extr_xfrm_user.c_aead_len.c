
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_aead {int alg_key_len; } ;



__attribute__((used)) static inline int aead_len(struct xfrm_algo_aead *alg)
{
 return sizeof(*alg) + ((alg->alg_key_len + 7) / 8);
}
