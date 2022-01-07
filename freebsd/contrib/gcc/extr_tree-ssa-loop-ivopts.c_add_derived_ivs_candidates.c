
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int type; int iv; } ;





 int add_iv_value_candidates (struct ivopts_data*,int ,struct iv_use*) ;
 int gcc_unreachable () ;
 struct iv_use* iv_use (struct ivopts_data*,unsigned int) ;
 unsigned int n_iv_uses (struct ivopts_data*) ;

__attribute__((used)) static void
add_derived_ivs_candidates (struct ivopts_data *data)
{
  unsigned i;

  for (i = 0; i < n_iv_uses (data); i++)
    {
      struct iv_use *use = iv_use (data, i);

      if (!use)
 continue;

      switch (use->type)
 {
 case 128:
 case 129:
 case 130:

   add_iv_value_candidates (data, use->iv, use);
   break;

 default:
   gcc_unreachable ();
 }
    }
}
