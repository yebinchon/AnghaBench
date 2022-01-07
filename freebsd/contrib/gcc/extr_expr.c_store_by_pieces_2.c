
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct store_by_pieces {unsigned int len; unsigned int offset; scalar_t__ explicit_inc_to; scalar_t__ reverse; int to_addr; int constfundata; int (* constfun ) (int ,unsigned int,int) ;int to; scalar_t__ autinc_to; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef unsigned int HOST_WIDE_INT ;


 int GEN_INT (unsigned int) ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ HAVE_POST_INCREMENT ;
 scalar_t__ HAVE_PRE_DECREMENT ;
 int adjust_address (int ,int,unsigned int) ;
 int adjust_automodify_address (int ,int,int ,unsigned int) ;
 int emit_insn (rtx) ;
 rtx gen_add2_insn (int ,int ) ;
 int stub1 (int ,unsigned int,int) ;
 rtx stub2 (rtx,...) ;

__attribute__((used)) static void
store_by_pieces_2 (rtx (*genfun) (rtx, ...), enum machine_mode mode,
     struct store_by_pieces *data)
{
  unsigned int size = GET_MODE_SIZE (mode);
  rtx to1, cst;

  while (data->len >= size)
    {
      if (data->reverse)
 data->offset -= size;

      if (data->autinc_to)
 to1 = adjust_automodify_address (data->to, mode, data->to_addr,
      data->offset);
      else
 to1 = adjust_address (data->to, mode, data->offset);

      if (HAVE_PRE_DECREMENT && data->explicit_inc_to < 0)
 emit_insn (gen_add2_insn (data->to_addr,
      GEN_INT (-(HOST_WIDE_INT) size)));

      cst = (*data->constfun) (data->constfundata, data->offset, mode);
      emit_insn ((*genfun) (to1, cst));

      if (HAVE_POST_INCREMENT && data->explicit_inc_to > 0)
 emit_insn (gen_add2_insn (data->to_addr, GEN_INT (size)));

      if (! data->reverse)
 data->offset += size;

      data->len -= size;
    }
}
