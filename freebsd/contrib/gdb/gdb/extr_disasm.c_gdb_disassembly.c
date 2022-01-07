
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_stream {int stream; } ;
struct ui_out {int dummy; } ;
struct symtab {TYPE_1__* linetable; } ;
struct linetable_entry {int dummy; } ;
struct disassemble_info {int dummy; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int nitems; struct linetable_entry* item; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 int do_assembly_only (struct ui_out*,struct disassemble_info*,int ,int ,int,struct ui_stream*) ;
 int do_cleanups (struct cleanup*) ;
 int do_mixed_source_and_assembly (struct ui_out*,struct disassemble_info*,int,struct linetable_entry*,int ,int ,struct symtab*,int,struct ui_stream*) ;
 struct symtab* find_pc_symtab (int ) ;
 struct disassemble_info gdb_disassemble_info (int ,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 struct cleanup* make_cleanup_ui_out_stream_delete (struct ui_stream*) ;
 struct ui_stream* ui_out_stream_new (struct ui_out*) ;

void
gdb_disassembly (struct ui_out *uiout,
  char *file_string,
  int line_num,
  int mixed_source_and_assembly,
  int how_many, CORE_ADDR low, CORE_ADDR high)
{
  struct ui_stream *stb = ui_out_stream_new (uiout);
  struct cleanup *cleanups = make_cleanup_ui_out_stream_delete (stb);
  struct disassemble_info di = gdb_disassemble_info (current_gdbarch, stb->stream);

  struct symtab *symtab = ((void*)0);
  struct linetable_entry *le = ((void*)0);
  int nlines = -1;


  symtab = find_pc_symtab (low);

  if (symtab != ((void*)0) && symtab->linetable != ((void*)0))
    {

      le = symtab->linetable->item;
      nlines = symtab->linetable->nitems;
    }

  if (!mixed_source_and_assembly || nlines <= 0
      || symtab == ((void*)0) || symtab->linetable == ((void*)0))
    do_assembly_only (uiout, &di, low, high, how_many, stb);

  else if (mixed_source_and_assembly)
    do_mixed_source_and_assembly (uiout, &di, nlines, le, low,
      high, symtab, how_many, stb);

  do_cleanups (cleanups);
  gdb_flush (gdb_stdout);
}
