
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int stream; } ;
struct ui_out {int dummy; } ;
struct disassemble_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int QUIT ;
 scalar_t__ TARGET_PRINT_INSN (scalar_t__,struct disassemble_info*) ;
 int build_address_symbolic (scalar_t__,int ,char**,int*,char**,int*,int*) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (struct ui_out*,int *) ;
 int ui_file_rewind (int ) ;
 int ui_out_field_core_addr (struct ui_out*,char*,scalar_t__) ;
 int ui_out_field_int (struct ui_out*,char*,int) ;
 int ui_out_field_stream (struct ui_out*,char*,struct ui_stream*) ;
 int ui_out_field_string (struct ui_out*,char*,char*) ;
 int ui_out_text (struct ui_out*,char*) ;
 int xfree (char*) ;

__attribute__((used)) static int
dump_insns (struct ui_out *uiout, struct disassemble_info * di,
     CORE_ADDR low, CORE_ADDR high,
     int how_many, struct ui_stream *stb)
{
  int num_displayed = 0;
  CORE_ADDR pc;


  int unmapped;
  int offset;
  int line;
  struct cleanup *ui_out_chain;

  for (pc = low; pc < high;)
    {
      char *filename = ((void*)0);
      char *name = ((void*)0);

      QUIT;
      if (how_many >= 0)
 {
   if (num_displayed >= how_many)
     break;
   else
     num_displayed++;
 }
      ui_out_chain = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
      ui_out_field_core_addr (uiout, "address", pc);

      if (!build_address_symbolic (pc, 0, &name, &offset, &filename,
       &line, &unmapped))
 {


   ui_out_text (uiout, " <");
   ui_out_field_string (uiout, "func-name", name);
   ui_out_text (uiout, "+");
   ui_out_field_int (uiout, "offset", offset);
   ui_out_text (uiout, ">:\t");
 }
      else
 ui_out_text (uiout, ":\t");

      if (filename != ((void*)0))
 xfree (filename);
      if (name != ((void*)0))
 xfree (name);

      ui_file_rewind (stb->stream);
      pc += TARGET_PRINT_INSN (pc, di);
      ui_out_field_stream (uiout, "inst", stb);
      ui_file_rewind (stb->stream);
      do_cleanups (ui_out_chain);
      ui_out_text (uiout, "\n");
    }
  return num_displayed;
}
