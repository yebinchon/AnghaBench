
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int Pmode ;
 scalar_t__ TARGET_ARCH64 ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_pic_helper () ;
 int flag_pic ;
 int gen_load_pcrel_symdi (int ,void*,void*) ;
 int gen_load_pcrel_symsi (int ,void*,void*) ;
 void* gen_rtx_SYMBOL_REF (int ,char*) ;
 int gen_rtx_USE (int ,int ) ;
 void* global_offset_table ;
 int pic_helper_emitted_p ;
 void* pic_helper_symbol ;
 char* pic_helper_symbol_name ;
 int pic_offset_table_rtx ;

__attribute__((used)) static void
load_pic_register (bool delay_pic_helper)
{
  int orig_flag_pic = flag_pic;


  if (!pic_helper_symbol_name[0])
    {
      ASM_GENERATE_INTERNAL_LABEL (pic_helper_symbol_name, "LADDPC", 0);
      pic_helper_symbol = gen_rtx_SYMBOL_REF (Pmode, pic_helper_symbol_name);
      global_offset_table = gen_rtx_SYMBOL_REF (Pmode, "_GLOBAL_OFFSET_TABLE_");
    }



  if (!delay_pic_helper && !pic_helper_emitted_p)
    emit_pic_helper ();

  flag_pic = 0;
  if (TARGET_ARCH64)
    emit_insn (gen_load_pcrel_symdi (pic_offset_table_rtx, global_offset_table,
         pic_helper_symbol));
  else
    emit_insn (gen_load_pcrel_symsi (pic_offset_table_rtx, global_offset_table,
         pic_helper_symbol));
  flag_pic = orig_flag_pic;





  emit_insn (gen_rtx_USE (VOIDmode, pic_offset_table_rtx));
}
