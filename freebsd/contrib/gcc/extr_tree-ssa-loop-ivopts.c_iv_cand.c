
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int iv_candidates; } ;
struct iv_cand {int dummy; } ;


 struct iv_cand* VEC_index (int ,int ,unsigned int) ;
 int iv_cand_p ;

__attribute__((used)) static inline struct iv_cand *
iv_cand (struct ivopts_data *data, unsigned i)
{
  return VEC_index (iv_cand_p, data->iv_candidates, i);
}
