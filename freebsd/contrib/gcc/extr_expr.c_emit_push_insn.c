
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum direction { ____Placeholder_direction } direction ;


 int ACCUMULATE_OUTGOING_ARGS ;
 unsigned int BIGGEST_ALIGNMENT ;
 int BITS_PER_UNIT ;
 int BLKmode ;
 int BLOCK_OP_CALL_PARM ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int FUNCTION_ARG_PADDING (int,int ) ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 int GET_MODE_SIZE (int) ;
 int INTVAL (scalar_t__) ;
 int LEGITIMATE_CONSTANT_P (scalar_t__) ;
 unsigned int MEM_ALIGN (scalar_t__) ;
 scalar_t__ MODE_INT ;
 scalar_t__ MOVE_BY_PIECES_P (unsigned int,unsigned int) ;
 scalar_t__ NULL_RTX ;
 int NULL_TREE ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ PARALLEL ;
 int PARM_BOUNDARY ;
 scalar_t__ POST_DEC ;
 scalar_t__ PUSH_ARGS ;
 int PUSH_ROUNDING (int) ;
 int Pmode ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int SLOW_UNALIGNED_ACCESS (int,unsigned int) ;
 scalar_t__ STACK_PUSH_CODE ;
 int UNITS_PER_WORD ;
 scalar_t__ adjust_address (scalar_t__,int,int) ;
 int anti_adjust_stack (scalar_t__) ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 int downward ;
 int emit_block_move (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int emit_group_load (scalar_t__,scalar_t__,int ,int) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int emit_single_push_insn (int,scalar_t__,int ) ;
 scalar_t__ expand_binop (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int force_const_mem (int,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_rtx_MEM (int,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 scalar_t__ memory_address (int,scalar_t__) ;
 int move_block_to_reg (scalar_t__,scalar_t__,int,int) ;
 int move_by_pieces (int *,scalar_t__,int,unsigned int,int ) ;
 int none ;
 scalar_t__ operand_subword_force (scalar_t__,int,int) ;
 scalar_t__ plus_constant (scalar_t__,int) ;
 scalar_t__ push_block (scalar_t__,int,int) ;
 scalar_t__ reg_mentioned_p (int ,scalar_t__) ;
 int set_mem_align (scalar_t__,unsigned int) ;
 int sub_optab ;
 int upward ;
 scalar_t__ validize_mem (int ) ;
 int virtual_outgoing_args_rtx ;
 int virtual_stack_dynamic_rtx ;
 int word_mode ;

void
emit_push_insn (rtx x, enum machine_mode mode, tree type, rtx size,
  unsigned int align, int partial, rtx reg, int extra,
  rtx args_addr, rtx args_so_far, int reg_parm_stack_space,
  rtx alignment_pad)
{
  rtx xinner;
  enum direction stack_direction



    = upward;





  enum direction where_pad = FUNCTION_ARG_PADDING (mode, type);



  if (STACK_PUSH_CODE == POST_DEC)
    if (where_pad != none)
      where_pad = (where_pad == downward ? upward : downward);

  xinner = x;

  if (mode == BLKmode)
    {


      rtx temp;
      int used;
      int offset;
      int skip;

      offset = partial % (PARM_BOUNDARY / BITS_PER_UNIT);
      used = partial - offset;

      gcc_assert (size);




      if (partial != 0)
 xinner = adjust_address (xinner, BLKmode, used);





      skip = (reg_parm_stack_space == 0) ? 0 : used;
 {
   rtx target;





   if (partial != 0)
     {
       if (GET_CODE (size) == CONST_INT)
  size = GEN_INT (INTVAL (size) - used);
       else
  size = expand_binop (GET_MODE (size), sub_optab, size,
         GEN_INT (used), NULL_RTX, 0,
         OPTAB_LIB_WIDEN);
     }




   if (! args_addr)
     {
       temp = push_block (size, extra, where_pad == downward);
       extra = 0;
     }
   else if (GET_CODE (args_so_far) == CONST_INT)
     temp = memory_address (BLKmode,
       plus_constant (args_addr,
        skip + INTVAL (args_so_far)));
   else
     temp = memory_address (BLKmode,
       plus_constant (gen_rtx_PLUS (Pmode,
        args_addr,
        args_so_far),
        skip));

   if (!ACCUMULATE_OUTGOING_ARGS)
     {




       if (reg_mentioned_p (virtual_stack_dynamic_rtx, temp)
    || reg_mentioned_p (virtual_outgoing_args_rtx, temp))
  temp = copy_to_reg (temp);
     }

   target = gen_rtx_MEM (BLKmode, temp);
   set_mem_align (target, align);

   emit_block_move (target, xinner, size, BLOCK_OP_CALL_PARM);
 }
    }
  else if (partial > 0)
    {


      int size = GET_MODE_SIZE (mode) / UNITS_PER_WORD;
      int i;
      int not_stack;


      int offset = partial % (PARM_BOUNDARY / BITS_PER_UNIT);
      int args_offset = INTVAL (args_so_far);
      int skip;




      if (extra && args_addr == 0
   && where_pad != none && where_pad != stack_direction)
 anti_adjust_stack (GEN_INT (extra));




      if (args_addr == 0)
 offset = 0;



      not_stack = (partial - offset) / UNITS_PER_WORD;
      offset /= UNITS_PER_WORD;





      skip = (reg_parm_stack_space == 0) ? 0 : not_stack;

      if (CONSTANT_P (x) && ! LEGITIMATE_CONSTANT_P (x))
 x = validize_mem (force_const_mem (mode, x));



      if ((REG_P (x) && REGNO (x) < FIRST_PSEUDO_REGISTER
    && GET_MODE_CLASS (GET_MODE (x)) != MODE_INT))
 x = copy_to_reg (x);





      for (i = not_stack; i < size; i++)



 if (i >= not_stack + offset)
   emit_push_insn (operand_subword_force (x, i, mode),
     word_mode, NULL_TREE, NULL_RTX, align, 0, NULL_RTX,
     0, args_addr,
     GEN_INT (args_offset + ((i - not_stack + skip)
        * UNITS_PER_WORD)),
     reg_parm_stack_space, alignment_pad);
    }
  else
    {
      rtx addr;
      rtx dest;




      if (extra && args_addr == 0
   && where_pad != none && where_pad != stack_direction)
 anti_adjust_stack (GEN_INT (extra));






 {
   if (GET_CODE (args_so_far) == CONST_INT)
     addr
       = memory_address (mode,
    plus_constant (args_addr,
            INTVAL (args_so_far)));
   else
     addr = memory_address (mode, gen_rtx_PLUS (Pmode, args_addr,
             args_so_far));
   dest = gen_rtx_MEM (mode, addr);
   set_mem_align (dest, align);

   emit_move_insn (dest, x);
 }
    }




  if (partial > 0 && reg != 0)
    {


      if (GET_CODE (reg) == PARALLEL)
 emit_group_load (reg, x, type, -1);
      else
 {
   gcc_assert (partial % UNITS_PER_WORD == 0);
   move_block_to_reg (REGNO (reg), x, partial / UNITS_PER_WORD, mode);
 }
    }

  if (extra && args_addr == 0 && where_pad == stack_direction)
    anti_adjust_stack (GEN_INT (extra));

  if (alignment_pad && args_addr == 0)
    anti_adjust_stack (alignment_pad);
}
