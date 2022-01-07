
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_ca {int dummy; } ;


 int iv_ca_free (struct iv_ca**) ;
 struct iv_ca* iv_ca_new (struct ivopts_data*) ;
 int iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;
 int try_add_cand_for (struct ivopts_data*,struct iv_ca*,int ) ;

__attribute__((used)) static struct iv_ca *
get_initial_solution (struct ivopts_data *data)
{
  struct iv_ca *ivs = iv_ca_new (data);
  unsigned i;

  for (i = 0; i < n_iv_uses (data); i++)
    if (!try_add_cand_for (data, ivs, iv_use (data, i)))
      {
 iv_ca_free (&ivs);
 return ((void*)0);
      }

  return ivs;
}
