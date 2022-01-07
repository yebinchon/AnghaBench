
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct mips_arg_info {scalar_t__ reg_offset; scalar_t__ reg_words; scalar_t__ stack_words; scalar_t__ stack_offset; scalar_t__ fpr_p; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int gp_reg_found; int arg_number; int fp_code; scalar_t__ num_gprs; scalar_t__ stack_words; int num_fprs; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 scalar_t__ ABI_EABI ;
 scalar_t__ FP_INC ;
 int SFmode ;
 scalar_t__ mips_abi ;
 int mips_arg_info (TYPE_1__*,int,int ,int,struct mips_arg_info*) ;

void
function_arg_advance (CUMULATIVE_ARGS *cum, enum machine_mode mode,
        tree type, int named)
{
  struct mips_arg_info info;

  mips_arg_info (cum, mode, type, named, &info);

  if (!info.fpr_p)
    cum->gp_reg_found = 1;




  if (cum->arg_number < 2 && info.fpr_p)
    cum->fp_code += (mode == SFmode ? 1 : 2) << ((cum->arg_number - 1) * 2);

  if (mips_abi != ABI_EABI || !info.fpr_p)
    cum->num_gprs = info.reg_offset + info.reg_words;
  else if (info.reg_words > 0)
    cum->num_fprs += FP_INC;

  if (info.stack_words > 0)
    cum->stack_words = info.stack_offset + info.stack_words;

  cum->arg_number++;
}
