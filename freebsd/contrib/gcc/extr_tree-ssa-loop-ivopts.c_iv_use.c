
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int iv_uses; } ;
struct iv_use {int dummy; } ;


 struct iv_use* VEC_index (int ,int ,unsigned int) ;
 int iv_use_p ;

__attribute__((used)) static inline struct iv_use *
iv_use (struct ivopts_data *data, unsigned i)
{
  return VEC_index (iv_use_p, data->iv_uses, i);
}
