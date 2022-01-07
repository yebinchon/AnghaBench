
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; } ;


 TYPE_2__* insn_data ;
 int reload_adjust_reg_for_temp (int *,int ,int,int) ;
 int scratch_reload_class (int) ;

__attribute__((used)) static bool
reload_adjust_reg_for_icode (rtx *reload_reg, rtx alt_reload_reg,
        enum insn_code icode)

{
  enum reg_class new_class = scratch_reload_class (icode);
  enum machine_mode new_mode = insn_data[(int) icode].operand[2].mode;

  return reload_adjust_reg_for_temp (reload_reg, alt_reload_reg,
         new_class, new_mode);
}
