
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int iv_candidates; } ;


 int VEC_length (int ,int ) ;
 int iv_cand_p ;

__attribute__((used)) static inline unsigned
n_iv_cands (struct ivopts_data *data)
{
  return VEC_length (iv_cand_p, data->iv_candidates);
}
