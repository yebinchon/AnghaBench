
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int BLOCK_OP_NORMAL ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ CONCAT ;
 scalar_t__ ERROR_MARK ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_ALIGNMENT (int) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MEM_ALIAS_SET (scalar_t__) ;
 int MEM_ALIGN (scalar_t__) ;
 int MEM_KEEP_ALIAS_SET_P (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int MEM_SET_IN_STRUCT_P (scalar_t__,int) ;
 scalar_t__ MODE_COMPLEX_FLOAT ;
 scalar_t__ MODE_COMPLEX_INT ;
 scalar_t__ MODE_INT ;
 scalar_t__ NOP_EXPR ;
 int NULL_RTX ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ REG_P (scalar_t__) ;
 int RSHIFT_EXPR ;
 scalar_t__ SLOW_UNALIGNED_ACCESS (int,int) ;
 scalar_t__ SUBREG ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_SIZE (int ) ;
 int VOIDmode ;
 scalar_t__ adjust_address (scalar_t__,int,int) ;
 scalar_t__ assign_temp (int ,int ,int,int) ;
 scalar_t__ compare_tree_int (int ,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ convert_modes (int,int,scalar_t__,int) ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int * direct_store ;
 int emit_block_move (scalar_t__,scalar_t__,int ,int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_expr (int ,scalar_t__,int,int ) ;
 scalar_t__ expand_normal (int ) ;
 scalar_t__ expand_shift (int ,int,scalar_t__,int ,int ,int) ;
 int gcc_assert (int) ;
 int set_mem_alias_set (scalar_t__,int) ;
 int size_int (int) ;
 int store_bit_field (scalar_t__,int,int,int,scalar_t__) ;
 scalar_t__ store_expr (int ,scalar_t__,int ) ;

__attribute__((used)) static rtx
store_field (rtx target, HOST_WIDE_INT bitsize, HOST_WIDE_INT bitpos,
      enum machine_mode mode, tree exp, tree type, int alias_set)
{
  HOST_WIDE_INT width_mask = 0;

  if (TREE_CODE (exp) == ERROR_MARK)
    return const0_rtx;



  if (bitsize == 0)
    return expand_expr (exp, const0_rtx, VOIDmode, 0);
  else if (bitsize >= 0 && bitsize < HOST_BITS_PER_WIDE_INT)
    width_mask = ((HOST_WIDE_INT) 1 << bitsize) - 1;
  if (mode == BLKmode
      && (REG_P (target) || GET_CODE (target) == SUBREG))
    {
      rtx object = assign_temp (type, 0, 1, 1);
      rtx blk_object = adjust_address (object, BLKmode, 0);

      if (bitsize != (HOST_WIDE_INT) GET_MODE_BITSIZE (GET_MODE (target)))
 emit_move_insn (object, target);

      store_field (blk_object, bitsize, bitpos, mode, exp, type, alias_set);

      emit_move_insn (target, object);


      return blk_object;
    }

  if (GET_CODE (target) == CONCAT)
    {


      gcc_assert (!bitpos);
      return store_expr (exp, target, 0);
    }





  if (mode == VOIDmode
      || (mode != BLKmode && ! direct_store[(int) mode]
   && GET_MODE_CLASS (mode) != MODE_COMPLEX_INT
   && GET_MODE_CLASS (mode) != MODE_COMPLEX_FLOAT)
      || REG_P (target)
      || GET_CODE (target) == SUBREG


      || (mode != BLKmode
   && ((((MEM_ALIGN (target) < GET_MODE_ALIGNMENT (mode))
  || bitpos % GET_MODE_ALIGNMENT (mode))
        && SLOW_UNALIGNED_ACCESS (mode, MEM_ALIGN (target)))
       || (bitpos % BITS_PER_UNIT != 0)))



      || (bitsize >= 0
   && TREE_CODE (TYPE_SIZE (TREE_TYPE (exp))) == INTEGER_CST
   && compare_tree_int (TYPE_SIZE (TREE_TYPE (exp)), bitsize) != 0))
    {
      rtx temp;






      if (TREE_CODE (exp) == NOP_EXPR)
 {
   tree type = TREE_TYPE (exp);
   if (INTEGRAL_TYPE_P (type)
       && TYPE_PRECISION (type) < GET_MODE_BITSIZE (TYPE_MODE (type))
       && bitsize == TYPE_PRECISION (type))
     {
       type = TREE_TYPE (TREE_OPERAND (exp, 0));
       if (INTEGRAL_TYPE_P (type) && TYPE_PRECISION (type) >= bitsize)
  exp = TREE_OPERAND (exp, 0);
     }
 }

      temp = expand_normal (exp);





      if (BYTES_BIG_ENDIAN && GET_MODE_CLASS (GET_MODE (temp)) == MODE_INT
   && bitsize < (HOST_WIDE_INT) GET_MODE_BITSIZE (GET_MODE (temp))
   && TREE_CODE (TREE_TYPE (exp)) == RECORD_TYPE)
 temp = expand_shift (RSHIFT_EXPR, GET_MODE (temp), temp,
        size_int (GET_MODE_BITSIZE (GET_MODE (temp))
           - bitsize),
        NULL_RTX, 1);



      if (mode != VOIDmode && mode != BLKmode
   && mode != TYPE_MODE (TREE_TYPE (exp)))
 temp = convert_modes (mode, TYPE_MODE (TREE_TYPE (exp)), temp, 1);




      if (GET_MODE (target) == BLKmode && GET_MODE (temp) == BLKmode)
 {
   gcc_assert (MEM_P (target) && MEM_P (temp)
        && !(bitpos % BITS_PER_UNIT));

   target = adjust_address (target, VOIDmode, bitpos / BITS_PER_UNIT);
   emit_block_move (target, temp,
      GEN_INT ((bitsize + BITS_PER_UNIT - 1)
        / BITS_PER_UNIT),
      BLOCK_OP_NORMAL);

   return const0_rtx;
 }


      store_bit_field (target, bitsize, bitpos, mode, temp);

      return const0_rtx;
    }
  else
    {

      rtx to_rtx = adjust_address (target, mode, bitpos / BITS_PER_UNIT);

      if (to_rtx == target)
 to_rtx = copy_rtx (to_rtx);

      MEM_SET_IN_STRUCT_P (to_rtx, 1);
      if (!MEM_KEEP_ALIAS_SET_P (to_rtx) && MEM_ALIAS_SET (to_rtx) != 0)
 set_mem_alias_set (to_rtx, alias_set);

      return store_expr (exp, to_rtx, 0);
    }
}
