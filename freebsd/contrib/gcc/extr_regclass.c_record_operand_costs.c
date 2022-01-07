
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_pref {int dummy; } ;
struct costs {int dummy; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int n_operands; char** constraints; int* operand_mode; int * operand; int n_alternatives; } ;


 int ADDRESS ;
 scalar_t__ EXTRA_ADDRESS_CONSTRAINT (char const,char const*) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int MAX_RECOG_OPERANDS ;
 int MEM ;
 scalar_t__ MEM_P (int ) ;
 int SCRATCH ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int frequency ;
 struct costs init_cost ;
 TYPE_1__ recog_data ;
 int record_address_regs (int ,int ,int ,int ,int ,int) ;
 int record_reg_classes (int ,int,int *,int*,char const**,int ,struct costs*,struct reg_pref*) ;

__attribute__((used)) static void
record_operand_costs (rtx insn, struct costs *op_costs,
        struct reg_pref *reg_pref)
{
  const char *constraints[MAX_RECOG_OPERANDS];
  enum machine_mode modes[MAX_RECOG_OPERANDS];
  int i;

  for (i = 0; i < recog_data.n_operands; i++)
    {
      constraints[i] = recog_data.constraints[i];
      modes[i] = recog_data.operand_mode[i];
    }







  for (i = 0; i < recog_data.n_operands; i++)
    {
      op_costs[i] = init_cost;

      if (GET_CODE (recog_data.operand[i]) == SUBREG)
 recog_data.operand[i] = SUBREG_REG (recog_data.operand[i]);

      if (MEM_P (recog_data.operand[i]))
 record_address_regs (GET_MODE (recog_data.operand[i]),
        XEXP (recog_data.operand[i], 0),
        0, MEM, SCRATCH, frequency * 2);
      else if (constraints[i][0] == 'p'
        || EXTRA_ADDRESS_CONSTRAINT (constraints[i][0], constraints[i]))
 record_address_regs (VOIDmode, recog_data.operand[i], 0, ADDRESS,
        SCRATCH, frequency * 2);
    }





  for (i = 0; i < (int) recog_data.n_operands - 1; i++)
    if (constraints[i][0] == '%')
      {
 const char *xconstraints[MAX_RECOG_OPERANDS];
 int j;




 for (j = 0; j < recog_data.n_operands; j++)
   xconstraints[j] = constraints[j];

 xconstraints[i] = constraints[i+1];
 xconstraints[i+1] = constraints[i];
 record_reg_classes (recog_data.n_alternatives, recog_data.n_operands,
       recog_data.operand, modes,
       xconstraints, insn, op_costs, reg_pref);
      }

  record_reg_classes (recog_data.n_alternatives, recog_data.n_operands,
        recog_data.operand, modes,
        constraints, insn, op_costs, reg_pref);
}
