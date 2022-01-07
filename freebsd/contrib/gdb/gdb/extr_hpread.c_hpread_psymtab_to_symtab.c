
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int objfile; int filename; scalar_t__ number_of_dependencies; scalar_t__ readin; } ;


 scalar_t__ LDSYMLEN (struct partial_symtab*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 int hpread_psymtab_to_symtab_1 (struct partial_symtab*) ;
 scalar_t__ info_verbose ;
 int printf_filtered (char*,...) ;
 scalar_t__ processing_gcc_compilation ;
 int scan_file_globals (int ) ;

__attribute__((used)) static void
hpread_psymtab_to_symtab (struct partial_symtab *pst)
{

  if (!pst)
    return;


  if (pst->readin)
    {
      fprintf_unfiltered (gdb_stderr, "Psymtab for %s already read in."
     "  Shouldn't happen.\n",
     pst->filename);
      return;
    }







  processing_gcc_compilation = 0;

  if (LDSYMLEN (pst) || pst->number_of_dependencies)
    {


      if (info_verbose)
 {
   printf_filtered ("Reading in symbols for %s...", pst->filename);
   gdb_flush (gdb_stdout);
 }

      hpread_psymtab_to_symtab_1 (pst);



      scan_file_globals (pst->objfile);


      if (info_verbose)
 printf_filtered ("done.\n");
    }
}
