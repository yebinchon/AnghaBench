
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int current_function_uses_pic_offset_table ;
 int emit_move_insn (int ,scalar_t__) ;
 scalar_t__ flag_pic ;
 int gen_reg_rtx (int ) ;
 scalar_t__ gen_rtx_SYMBOL_REF (int ,char*) ;
 scalar_t__ global_offset_table ;
 int pic_offset_table_rtx ;

__attribute__((used)) static rtx
sparc_tls_got (void)
{
  rtx temp;
  if (flag_pic)
    {
      current_function_uses_pic_offset_table = 1;
      return pic_offset_table_rtx;
    }

  if (!global_offset_table)
    global_offset_table = gen_rtx_SYMBOL_REF (Pmode, "_GLOBAL_OFFSET_TABLE_");
  temp = gen_reg_rtx (Pmode);
  emit_move_insn (temp, global_offset_table);
  return temp;
}
