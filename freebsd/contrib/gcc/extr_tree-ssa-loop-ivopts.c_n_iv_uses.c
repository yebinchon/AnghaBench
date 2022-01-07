
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int iv_uses; } ;


 int VEC_length (int ,int ) ;
 int iv_use_p ;

__attribute__((used)) static inline unsigned
n_iv_uses (struct ivopts_data *data)
{
  return VEC_length (iv_use_p, data->iv_uses);
}
