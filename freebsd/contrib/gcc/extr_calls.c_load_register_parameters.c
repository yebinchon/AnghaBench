
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ where_pad; } ;
struct arg_data {scalar_t__ tail_call_reg; scalar_t__ reg; int partial; scalar_t__ value; int n_aligned_regs; scalar_t__* aligned_regs; int mode; TYPE_1__ locate; scalar_t__ pass_on_stack; int parallel_value; int tree_value; } ;
typedef scalar_t__ rtx ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BITS_PER_UNIT ;
 scalar_t__ BLKmode ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int ECF_SIBCALL ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE_SIZE (int ) ;
 int LSHIFT_EXPR ;
 int NULL_TREE ;
 scalar_t__ PARALLEL ;
 scalar_t__ REGNO (scalar_t__) ;
 int RSHIFT_EXPR ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 int XEXP (scalar_t__,int ) ;
 int build_int_cst (int ,int) ;
 scalar_t__ check_sibcall_argument_overlap (scalar_t__,struct arg_data*,int ) ;
 scalar_t__ downward ;
 int emit_group_move (scalar_t__,int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_shift (int,int ,scalar_t__,int ,scalar_t__,int) ;
 int gcc_assert (int) ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ gen_rtx_REG (int ,scalar_t__) ;
 scalar_t__ get_last_insn () ;
 int int_size_in_bytes (int ) ;
 scalar_t__ mem_overlaps_already_clobbered_arg_p (int ,int) ;
 int move_block_to_reg (scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ operand_subword_force (scalar_t__,int ,int ) ;
 scalar_t__ upward ;
 int use_group_regs (scalar_t__*,scalar_t__) ;
 int use_reg (scalar_t__*,scalar_t__) ;
 int use_regs (scalar_t__*,scalar_t__,int) ;
 scalar_t__ validize_mem (scalar_t__) ;
 int word_mode ;

__attribute__((used)) static void
load_register_parameters (struct arg_data *args, int num_actuals,
     rtx *call_fusage, int flags, int is_sibcall,
     int *sibcall_failure)
{
  int i, j;

  for (i = 0; i < num_actuals; i++)
    {
      rtx reg = ((flags & ECF_SIBCALL)
   ? args[i].tail_call_reg : args[i].reg);
      if (reg)
 {
   int partial = args[i].partial;
   int nregs;
   int size = 0;
   rtx before_arg = get_last_insn ();




   nregs = -1;
   if (GET_CODE (reg) == PARALLEL)
     ;
   else if (partial)
     {
       gcc_assert (partial % UNITS_PER_WORD == 0);
       nregs = partial / UNITS_PER_WORD;
     }
   else if (TYPE_MODE (TREE_TYPE (args[i].tree_value)) == BLKmode)
     {
       size = int_size_in_bytes (TREE_TYPE (args[i].tree_value));
       nregs = (size + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD;
     }
   else
     size = GET_MODE_SIZE (args[i].mode);




   if (GET_CODE (reg) == PARALLEL)
     emit_group_move (reg, args[i].parallel_value);





   else if (nregs == -1)
     {
       emit_move_insn (reg, args[i].value);
     }




   else if (args[i].n_aligned_regs != 0)
     for (j = 0; j < args[i].n_aligned_regs; j++)
       emit_move_insn (gen_rtx_REG (word_mode, REGNO (reg) + j),
         args[i].aligned_regs[j]);

   else if (partial == 0 || args[i].pass_on_stack)
     {
       rtx mem = validize_mem (args[i].value);


       if (is_sibcall
    && mem_overlaps_already_clobbered_arg_p (XEXP (args[i].value, 0),
          size))
  *sibcall_failure = 1;


       if (nregs == 1 && size < UNITS_PER_WORD



    && BYTES_BIG_ENDIAN

   )
  {
    rtx tem = operand_subword_force (mem, 0, args[i].mode);
    rtx ri = gen_rtx_REG (word_mode, REGNO (reg));
    rtx x = gen_reg_rtx (word_mode);
    int shift = (UNITS_PER_WORD - size) * BITS_PER_UNIT;
    enum tree_code dir = BYTES_BIG_ENDIAN ? RSHIFT_EXPR
       : LSHIFT_EXPR;

    emit_move_insn (x, tem);
    x = expand_shift (dir, word_mode, x,
        build_int_cst (NULL_TREE, shift),
        ri, 1);
    if (x != ri)
      emit_move_insn (ri, x);
  }
       else
  move_block_to_reg (REGNO (reg), mem, nregs, args[i].mode);
     }




   if (is_sibcall
       && check_sibcall_argument_overlap (before_arg, &args[i], 0))
     *sibcall_failure = 1;



   if (GET_CODE (reg) == PARALLEL)
     use_group_regs (call_fusage, reg);
   else if (nregs == -1)
     use_reg (call_fusage, reg);
   else if (nregs > 0)
     use_regs (call_fusage, REGNO (reg), nregs);
 }
    }
}
