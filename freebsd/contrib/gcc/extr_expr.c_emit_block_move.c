
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum block_op_methods { ____Placeholder_block_op_methods } block_op_methods ;


 int BLKmode ;




 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INTVAL (int ) ;
 int MEM_ALIGN (int ) ;
 int MEM_P (int ) ;
 unsigned int MIN (int ,int ) ;
 scalar_t__ MOVE_BY_PIECES_P (scalar_t__,unsigned int) ;
 int NO_DEFER_POP ;
 int OK_DEFER_POP ;
 int adjust_address (int ,int ,int ) ;
 int block_move_libcall_safe_for_call_parm () ;
 int emit_block_move_via_libcall (int ,int ,int ,int) ;
 int emit_block_move_via_loop (int ,int ,int ,unsigned int) ;
 scalar_t__ emit_block_move_via_movmem (int ,int ,int ,unsigned int) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int move_by_pieces (int ,int ,scalar_t__,unsigned int,int ) ;
 int set_mem_size (int ,int ) ;
 int shallow_copy_rtx (int ) ;

rtx
emit_block_move (rtx x, rtx y, rtx size, enum block_op_methods method)
{
  bool may_use_call;
  rtx retval = 0;
  unsigned int align;

  switch (method)
    {
    case 130:
    case 128:
      may_use_call = 1;
      break;

    case 131:
      may_use_call = block_move_libcall_safe_for_call_parm ();



      NO_DEFER_POP;
      break;

    case 129:
      may_use_call = 0;
      break;

    default:
      gcc_unreachable ();
    }

  align = MIN (MEM_ALIGN (x), MEM_ALIGN (y));

  gcc_assert (MEM_P (x));
  gcc_assert (MEM_P (y));
  gcc_assert (size);



  x = adjust_address (x, BLKmode, 0);
  y = adjust_address (y, BLKmode, 0);



  if (GET_CODE (size) == CONST_INT)
    {
      if (INTVAL (size) == 0)
 return 0;

      x = shallow_copy_rtx (x);
      y = shallow_copy_rtx (y);
      set_mem_size (x, size);
      set_mem_size (y, size);
    }

  if (GET_CODE (size) == CONST_INT && MOVE_BY_PIECES_P (INTVAL (size), align))
    move_by_pieces (x, y, INTVAL (size), align, 0);
  else if (emit_block_move_via_movmem (x, y, size, align))
    ;
  else if (may_use_call)
    retval = emit_block_move_via_libcall (x, y, size,
       method == 128);
  else
    emit_block_move_via_loop (x, y, size, align);

  if (method == 131)
    OK_DEFER_POP;

  return retval;
}
