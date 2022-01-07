
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
struct iv_use {int type; int stmt; } ;
struct iv_cand {int dummy; } ;





 int gcc_unreachable () ;
 int mark_new_vars_to_rename (int ) ;
 int rewrite_use_address (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;
 int rewrite_use_compare (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;
 int rewrite_use_nonlinear_expr (struct ivopts_data*,struct iv_use*,struct iv_cand*) ;

__attribute__((used)) static void
rewrite_use (struct ivopts_data *data,
      struct iv_use *use, struct iv_cand *cand)
{
  switch (use->type)
    {
      case 128:
 rewrite_use_nonlinear_expr (data, use, cand);
 break;

      case 130:
 rewrite_use_address (data, use, cand);
 break;

      case 129:
 rewrite_use_compare (data, use, cand);
 break;

      default:
 gcc_unreachable ();
    }
  mark_new_vars_to_rename (use->stmt);
}
