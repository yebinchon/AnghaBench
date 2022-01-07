
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv_cand {int pos; int var_after; int var_before; TYPE_1__* iv; } ;
typedef int block_stmt_iterator ;
struct TYPE_6__ {struct iv_cand* selected; } ;
struct TYPE_5__ {int preserve_biv; } ;
struct TYPE_4__ {int step; int base; } ;





 int add_referenced_var (int ) ;
 int bsi_last (int ) ;
 int create_iv (int ,int ,int ,int ,int *,int,int *,int *) ;
 TYPE_3__* find_interesting_uses_op (struct ivopts_data*,int ) ;
 int gimple_add_tmp_var (int ) ;
 int ip_end_pos (int ) ;
 int ip_normal_pos (int ) ;
 TYPE_2__* name_info (struct ivopts_data*,int ) ;
 int unshare_expr (int ) ;

__attribute__((used)) static void
create_new_iv (struct ivopts_data *data, struct iv_cand *cand)
{
  block_stmt_iterator incr_pos;
  tree base;
  bool after = 0;

  if (!cand->iv)
    return;

  switch (cand->pos)
    {
    case 129:
      incr_pos = bsi_last (ip_normal_pos (data->current_loop));
      break;

    case 130:
      incr_pos = bsi_last (ip_end_pos (data->current_loop));
      after = 1;
      break;

    case 128:

      name_info (data, cand->var_before)->preserve_biv = 1;
      name_info (data, cand->var_after)->preserve_biv = 1;


      find_interesting_uses_op (data, cand->var_after)->selected = cand;

      return;
    }

  gimple_add_tmp_var (cand->var_before);
  add_referenced_var (cand->var_before);

  base = unshare_expr (cand->iv->base);

  create_iv (base, unshare_expr (cand->iv->step),
      cand->var_before, data->current_loop,
      &incr_pos, after, &cand->var_before, &cand->var_after);
}
