
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int objfile; int filename; } ;


 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 int mdebug_next_symbol_text ;
 int next_symbol_text_func ;
 int printf_filtered (char*,...) ;
 int psymtab_to_symtab_1 (struct partial_symtab*,int ) ;
 int scan_file_globals (int ) ;

__attribute__((used)) static void
mdebug_psymtab_to_symtab (struct partial_symtab *pst)
{

  if (!pst)
    return;

  if (info_verbose)
    {
      printf_filtered ("Reading in symbols for %s...", pst->filename);
      gdb_flush (gdb_stdout);
    }

  next_symbol_text_func = mdebug_next_symbol_text;

  psymtab_to_symtab_1 (pst, pst->filename);



  scan_file_globals (pst->objfile);

  if (info_verbose)
    printf_filtered ("done.\n");
}
