
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {scalar_t__ n_alternatives; int n_operands; scalar_t__* operand_type; scalar_t__* operand; int * operand_mode; int * operand_loc; } ;
struct TYPE_3__ {scalar_t__ memory_ok; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ MEM ;
 scalar_t__ OP_IN ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ avoid_constant_pool_reference (scalar_t__) ;
 int constrain_operands (int) ;
 int extract_insn (scalar_t__) ;
 int fatal_insn_not_found (scalar_t__) ;
 scalar_t__ get_pool_constant (scalar_t__) ;
 int preprocess_constraints () ;
 int push_minipool_fix (scalar_t__,int ,int ,int ,scalar_t__) ;
 TYPE_2__ recog_data ;
 TYPE_1__** recog_op_alt ;
 size_t which_alternative ;

__attribute__((used)) static bool
note_invalid_constants (rtx insn, HOST_WIDE_INT address, int do_pushes)
{
  bool result = 0;
  int opno;

  extract_insn (insn);

  if (!constrain_operands (1))
    fatal_insn_not_found (insn);

  if (recog_data.n_alternatives == 0)
    return 0;



  preprocess_constraints ();

  for (opno = 0; opno < recog_data.n_operands; opno++)
    {

      if (recog_data.operand_type[opno] != OP_IN)
 continue;





      if (recog_op_alt[opno][which_alternative].memory_ok)
 {
   rtx op = recog_data.operand[opno];

   if (CONSTANT_P (op))
     {
       if (do_pushes)
  push_minipool_fix (insn, address, recog_data.operand_loc[opno],
       recog_data.operand_mode[opno], op);
       result = 1;
     }
   else if (GET_CODE (op) == MEM
     && GET_CODE (XEXP (op, 0)) == SYMBOL_REF
     && CONSTANT_POOL_ADDRESS_P (XEXP (op, 0)))
     {
       if (do_pushes)
  {
    rtx cop = avoid_constant_pool_reference (op);






    if (op == cop)
      cop = get_pool_constant (XEXP (op, 0));

    push_minipool_fix (insn, address,
         recog_data.operand_loc[opno],
         recog_data.operand_mode[opno], cop);
  }

       result = 1;
     }
 }
    }

  return result;
}
