
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int dummy; } ;
struct ui_out {int dummy; } ;
struct disassemble_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int do_cleanups (struct cleanup*) ;
 int dump_insns (struct ui_out*,struct disassemble_info*,int ,int ,int,struct ui_stream*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (struct ui_out*,char*) ;

__attribute__((used)) static void
do_assembly_only (struct ui_out *uiout, struct disassemble_info * di,
    CORE_ADDR low, CORE_ADDR high,
    int how_many, struct ui_stream *stb)
{
  int num_displayed = 0;
  struct cleanup *ui_out_chain;

  ui_out_chain = make_cleanup_ui_out_list_begin_end (uiout, "asm_insns");

  num_displayed = dump_insns (uiout, di, low, high, how_many, stb);

  do_cleanups (ui_out_chain);
}
