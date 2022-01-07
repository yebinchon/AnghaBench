
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct partial_symtab {TYPE_1__* objfile; int filename; scalar_t__ number_of_dependencies; scalar_t__ readin; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
struct TYPE_3__ {int * obfd; } ;


 scalar_t__ DBX_STAB_SECTION (TYPE_1__*) ;
 scalar_t__ LDSYMLEN (struct partial_symtab*) ;
 int dbx_next_symbol_text ;
 int dbx_psymtab_to_symtab_1 (struct partial_symtab*) ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int free_current_contents ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int ,void*) ;
 int next_symbol_text_func ;
 int printf_filtered (char*,...) ;
 int scan_file_globals (TYPE_1__*) ;
 scalar_t__ stabs_data ;
 scalar_t__ symfile_relocate_debug_section (int *,scalar_t__,int *) ;

__attribute__((used)) static void
dbx_psymtab_to_symtab (struct partial_symtab *pst)
{
  bfd *sym_bfd;
  struct cleanup *back_to = ((void*)0);

  if (!pst)
    return;

  if (pst->readin)
    {
      fprintf_unfiltered (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
     pst->filename);
      return;
    }

  if (LDSYMLEN (pst) || pst->number_of_dependencies)
    {


      if (info_verbose)
 {
   printf_filtered ("Reading in symbols for %s...", pst->filename);
   gdb_flush (gdb_stdout);
 }

      sym_bfd = pst->objfile->obfd;

      next_symbol_text_func = dbx_next_symbol_text;

      if (DBX_STAB_SECTION (pst->objfile))
 {
   stabs_data
     = symfile_relocate_debug_section (pst->objfile->obfd,
           DBX_STAB_SECTION (pst->objfile),
           ((void*)0));
   if (stabs_data)
     back_to = make_cleanup (free_current_contents, (void *) &stabs_data);
 }

      dbx_psymtab_to_symtab_1 (pst);

      if (back_to)
 do_cleanups (back_to);



      scan_file_globals (pst->objfile);


      if (info_verbose)
 printf_filtered ("done.\n");
    }
}
