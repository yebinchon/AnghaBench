
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {scalar_t__ insn_code; } ;


 scalar_t__ BIGGEST_ALIGNMENT ;
 int BLOCK_OP_NO_LIBCALL ;
 scalar_t__ CODE_FOR_nothing ;
 scalar_t__ CONCAT ;
 int CONSTANT_P (scalar_t__) ;
 int GEN_INT (int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 size_t GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ MODE_COMPLEX_FLOAT ;
 scalar_t__ REG_P (scalar_t__) ;
 int STRICT_ALIGNMENT ;
 int VOIDmode ;
 int emit_block_move (scalar_t__,scalar_t__,int ,int ) ;
 int emit_insn (int ) ;
 scalar_t__ emit_move_complex_push (int,scalar_t__,scalar_t__) ;
 scalar_t__ emit_move_via_integer (int,scalar_t__,scalar_t__,int) ;
 int gen_rtx_CLOBBER (int ,scalar_t__) ;
 scalar_t__ get_last_insn () ;
 scalar_t__ get_mode_alignment (int) ;
 TYPE_2__* mov_optab ;
 scalar_t__ push_operand (scalar_t__,int) ;
 int read_complex_part (scalar_t__,int) ;
 int reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;
 scalar_t__ register_operand (scalar_t__,int) ;
 int reload_completed ;
 int reload_in_progress ;
 int write_complex_part (scalar_t__,int ,int) ;

__attribute__((used)) static rtx
emit_move_complex (enum machine_mode mode, rtx x, rtx y)
{
  bool try_int;



  if (push_operand (x, mode))
    return emit_move_complex_push (mode, x, y);




  if (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT
      && mov_optab->handlers[GET_MODE_INNER (mode)].insn_code != CODE_FOR_nothing)
    try_int = 0;

  else if (GET_CODE (x) == CONCAT || GET_CODE (y) == CONCAT)
    try_int = 0;

  else if (register_operand (x, mode) && register_operand (y, mode))
    try_int = 1;




  else if ((MEM_P (x) ? !CONSTANT_P (y) : MEM_P (y))
    && (!STRICT_ALIGNMENT
        || get_mode_alignment (mode) == BIGGEST_ALIGNMENT))
    try_int = 1;
  else
    try_int = 0;

  if (try_int)
    {
      rtx ret;



      if (MEM_P (x) && MEM_P (y))
 {
   emit_block_move (x, y, GEN_INT (GET_MODE_SIZE (mode)),
      BLOCK_OP_NO_LIBCALL);
   return get_last_insn ();
 }

      ret = emit_move_via_integer (mode, x, y, 1);
      if (ret)
 return ret;
    }




  if (!reload_completed && !reload_in_progress
      && REG_P (x) && !reg_overlap_mentioned_p (x, y))
    emit_insn (gen_rtx_CLOBBER (VOIDmode, x));

  write_complex_part (x, read_complex_part (y, 0), 0);
  write_complex_part (x, read_complex_part (y, 1), 1);
  return get_last_insn ();
}
