
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int readin; int number_of_dependencies; int filename; int section_offsets; scalar_t__ textlow; scalar_t__ texthigh; int objfile; int symtab; struct partial_symtab** dependencies; } ;
struct cleanup {int dummy; } ;


 scalar_t__ LDSYMLEN (struct partial_symtab*) ;
 int LDSYMOFF (struct partial_symtab*) ;
 int buildsym_init () ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 int hpread_expand_symtab (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int ,int ) ;
 int printf_filtered (char*,int ) ;
 int really_free_pendings ;
 int wrap_here (char*) ;

__attribute__((used)) static void
hpread_psymtab_to_symtab_1 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;


  if (!pst)
    return;


  if (pst->readin)
    {
      fprintf_unfiltered (gdb_stderr, "Psymtab for %s already read in."
     "  Shouldn't happen.\n",
     pst->filename);
      return;
    }


  for (i = 0; i < pst->number_of_dependencies; i++)
    if (!pst->dependencies[i]->readin)
      {

 if (info_verbose)
   {
     fputs_filtered (" ", gdb_stdout);
     wrap_here ("");
     fputs_filtered ("and ", gdb_stdout);
     wrap_here ("");
     printf_filtered ("%s...", pst->dependencies[i]->filename);
     wrap_here ("");
     gdb_flush (gdb_stdout);
   }
 hpread_psymtab_to_symtab_1 (pst->dependencies[i]);
      }


  if (LDSYMLEN (pst))
    {

      buildsym_init ();
      old_chain = make_cleanup (really_free_pendings, 0);

      pst->symtab =
 hpread_expand_symtab (pst->objfile, LDSYMOFF (pst), LDSYMLEN (pst),
         pst->textlow, pst->texthigh - pst->textlow,
         pst->section_offsets, pst->filename);

      do_cleanups (old_chain);
    }

  pst->readin = 1;
}
