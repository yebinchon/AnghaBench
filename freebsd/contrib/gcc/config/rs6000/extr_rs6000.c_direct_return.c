
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_gp_reg_save; int first_fp_reg_save; scalar_t__ first_altivec_reg_save; scalar_t__ vrsave_mask; int push_p; int cr_save_p; int lr_save_p; } ;
typedef TYPE_1__ rs6000_stack_t ;


 scalar_t__ LAST_ALTIVEC_REGNO ;
 scalar_t__ reload_completed ;
 TYPE_1__* rs6000_stack_info () ;

int
direct_return (void)
{
  if (reload_completed)
    {
      rs6000_stack_t *info = rs6000_stack_info ();

      if (info->first_gp_reg_save == 32
   && info->first_fp_reg_save == 64
   && info->first_altivec_reg_save == LAST_ALTIVEC_REGNO + 1
   && ! info->lr_save_p
   && ! info->cr_save_p
   && info->vrsave_mask == 0
   && ! info->push_p)
 return 1;
    }

  return 0;
}
