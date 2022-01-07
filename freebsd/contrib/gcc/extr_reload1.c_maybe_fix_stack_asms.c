
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_chain {int dead_or_set; int live_throughout; int insn; struct insn_chain* next; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int operand_loc; int operand; } ;
typedef int HARD_REG_SET ;


 int ADDRESS ;
 int AND_HARD_REG_SET (int ,int ) ;
 int CLEAR_HARD_REG_SET (int ) ;
 int CLEAR_REGNO_REG_SET (int *,int) ;
 scalar_t__ CLOBBER ;
 int CONSTRAINT_LEN (char,char const*) ;
 int EXTRA_ADDRESS_CONSTRAINT (char,char const*) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GENERAL_REGS ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 int MAX_RECOG_OPERANDS ;
 int NO_REGS ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_CLASS_FROM_CONSTRAINT (char,char const*) ;
 int SCRATCH ;
 int SET_HARD_REG_BIT (int ,int ) ;
 scalar_t__ STACK_REG_P (int ) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int asm_noperands (int ) ;
 scalar_t__ base_reg_class (int ,int ,int ) ;
 int decode_asm_operands (int ,int ,int ,char const**,int*) ;
 TYPE_1__ recog_data ;
 int * reg_class_contents ;
 scalar_t__** reg_class_subunion ;
 struct insn_chain* reload_insn_chain ;

__attribute__((used)) static void
maybe_fix_stack_asms (void)
{
}
