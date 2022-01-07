
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum block_op_methods { ____Placeholder_block_op_methods } block_op_methods ;
typedef scalar_t__ HOST_WIDE_INT ;


 int BLKmode ;
 int BLOCK_OP_NORMAL ;
 int BLOCK_OP_TAILCALL ;
 scalar_t__ CLEAR_BY_PIECES_P (scalar_t__,unsigned int) ;
 scalar_t__ COMPLEX_MODE_P (int) ;
 int * CONST0_RTX (int) ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int *) ;
 int GET_MODE (int *) ;
 int GET_MODE_INNER (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ INTVAL (int *) ;
 unsigned int MEM_ALIGN (int *) ;
 int clear_by_pieces (int *,scalar_t__,unsigned int) ;
 int * clear_storage_via_libcall (int *,int *,int) ;
 int * const0_rtx ;
 int emit_move_insn (int *,int *) ;
 int gcc_assert (int) ;
 scalar_t__ set_storage_via_setmem (int *,int *,int *,unsigned int) ;
 int write_complex_part (int *,int *,int) ;

rtx
clear_storage (rtx object, rtx size, enum block_op_methods method)
{
  enum machine_mode mode = GET_MODE (object);
  unsigned int align;

  gcc_assert (method == BLOCK_OP_NORMAL || method == BLOCK_OP_TAILCALL);



  if (mode != BLKmode
      && GET_CODE (size) == CONST_INT
      && INTVAL (size) == (HOST_WIDE_INT) GET_MODE_SIZE (mode))
    {
      rtx zero = CONST0_RTX (mode);
      if (zero != ((void*)0))
 {
   emit_move_insn (object, zero);
   return ((void*)0);
 }

      if (COMPLEX_MODE_P (mode))
 {
   zero = CONST0_RTX (GET_MODE_INNER (mode));
   if (zero != ((void*)0))
     {
       write_complex_part (object, zero, 0);
       write_complex_part (object, zero, 1);
       return ((void*)0);
     }
 }
    }

  if (size == const0_rtx)
    return ((void*)0);

  align = MEM_ALIGN (object);

  if (GET_CODE (size) == CONST_INT
      && CLEAR_BY_PIECES_P (INTVAL (size), align))
    clear_by_pieces (object, INTVAL (size), align);
  else if (set_storage_via_setmem (object, size, const0_rtx, align))
    ;
  else
    return clear_storage_via_libcall (object, size,
          method == BLOCK_OP_TAILCALL);

  return ((void*)0);
}
