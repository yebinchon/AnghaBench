
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int type; } ;
struct iv_cand {int dummy; } ;





 int determine_use_iv_cost_address (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;
 int determine_use_iv_cost_condition (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;
 int determine_use_iv_cost_generic (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;
 int gcc_unreachable () ;

__attribute__((used)) static bool
determine_use_iv_cost (struct ivopts_data *data,
         struct iv_use *use, struct iv_cand *cand)
{
  switch (use->type)
    {
    case 128:
      return determine_use_iv_cost_generic (data, use, cand);

    case 130:
      return determine_use_iv_cost_address (data, use, cand);

    case 129:
      return determine_use_iv_cost_condition (data, use, cand);

    default:
      gcc_unreachable ();
    }
}
