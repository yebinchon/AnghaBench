
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_2__ {int n_operands; scalar_t__* operand_type; int ** operand; } ;


 scalar_t__ CALL_INSN ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (int *) ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ MEM ;
 scalar_t__ OP_IN ;
 scalar_t__ REG_DEP_ANTI ;
 scalar_t__ REG_DEP_OUTPUT ;
 scalar_t__ REG_NOTE_KIND (int *) ;
 int * SET_DEST (int *) ;
 int * SET_SRC (int *) ;
 scalar_t__ SYMBOL_REF ;
 int TYPE_ALU_SHIFT ;
 int TYPE_ALU_SHIFT_REG ;
 int * XEXP (int *,int ) ;
 scalar_t__ arm_tune_xscale ;
 int extract_insn (int *) ;
 int frame_pointer_rtx ;
 int get_attr_shift (int *) ;
 int get_attr_type (int *) ;
 int hard_frame_pointer_rtx ;
 int preprocess_constraints () ;
 TYPE_1__ recog_data ;
 scalar_t__ recog_memoized (int *) ;
 scalar_t__ reg_mentioned_p (int ,int *) ;
 scalar_t__ reg_overlap_mentioned_p (int *,int *) ;
 int * single_set (int *) ;
 int stack_pointer_rtx ;

__attribute__((used)) static int
arm_adjust_cost (rtx insn, rtx link, rtx dep, int cost)
{
  rtx i_pat, d_pat;



  if (arm_tune_xscale
      && REG_NOTE_KIND (link) == 0
      && recog_memoized (insn) >= 0
      && recog_memoized (dep) >= 0)
    {
      int shift_opnum = get_attr_shift (insn);
      enum attr_type attr_type = get_attr_type (dep);





      if (shift_opnum != 0
   && (attr_type == TYPE_ALU_SHIFT || attr_type == TYPE_ALU_SHIFT_REG))
 {
   rtx shifted_operand;
   int opno;


   extract_insn (insn);
   shifted_operand = recog_data.operand[shift_opnum];




   extract_insn (dep);
   preprocess_constraints ();
   for (opno = 0; opno < recog_data.n_operands; opno++)
     {

       if (recog_data.operand_type[opno] == OP_IN)
  continue;

       if (reg_overlap_mentioned_p (recog_data.operand[opno],
        shifted_operand))
  return 2;
     }
 }
    }


  if (REG_NOTE_KIND (link) == REG_DEP_ANTI
      || REG_NOTE_KIND (link) == REG_DEP_OUTPUT)
    return 0;


  if (REG_NOTE_KIND (link) == 0
      && GET_CODE (insn) == CALL_INSN)
    return 1;

  if ((i_pat = single_set (insn)) != ((void*)0)
      && GET_CODE (SET_SRC (i_pat)) == MEM
      && (d_pat = single_set (dep)) != ((void*)0)
      && GET_CODE (SET_DEST (d_pat)) == MEM)
    {
      rtx src_mem = XEXP (SET_SRC (i_pat), 0);





      if ((GET_CODE (src_mem) == SYMBOL_REF && CONSTANT_POOL_ADDRESS_P (src_mem))
   || reg_mentioned_p (stack_pointer_rtx, src_mem)
   || reg_mentioned_p (frame_pointer_rtx, src_mem)
   || reg_mentioned_p (hard_frame_pointer_rtx, src_mem))
 return 1;
    }

  return cost;
}
