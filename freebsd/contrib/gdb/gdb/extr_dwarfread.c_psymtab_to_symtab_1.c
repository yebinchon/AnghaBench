
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int readin; int number_of_dependencies; struct partial_symtab** dependencies; int filename; } ;
struct cleanup {int dummy; } ;


 scalar_t__ DBLENGTH (struct partial_symtab*) ;
 int buildsym_init () ;
 int diecount ;
 int do_cleanups (struct cleanup*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int ,int ) ;
 int printf_filtered (char*,int ) ;
 int read_ofile_symtab (struct partial_symtab*) ;
 int really_free_pendings ;
 int warning (char*,int ) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
psymtab_to_symtab_1 (struct partial_symtab *pst)
{
  int i;
  struct cleanup *old_chain;

  if (pst != ((void*)0))
    {
      if (pst->readin)
 {
   warning ("psymtab for %s already read in.  Shouldn't happen.",
     pst->filename);
 }
      else
 {

   for (i = 0; i < pst->number_of_dependencies; i++)
     {
       if (!pst->dependencies[i]->readin)
  {

    if (info_verbose)
      {
        fputs_filtered (" ", gdb_stdout);
        wrap_here ("");
        fputs_filtered ("and ", gdb_stdout);
        wrap_here ("");
        printf_filtered ("%s...",
           pst->dependencies[i]->filename);
        wrap_here ("");
        gdb_flush (gdb_stdout);
      }
    psymtab_to_symtab_1 (pst->dependencies[i]);
  }
     }
   if (DBLENGTH (pst))
     {
       buildsym_init ();
       old_chain = make_cleanup (really_free_pendings, 0);
       read_ofile_symtab (pst);
       if (info_verbose)
  {
    printf_filtered ("%d DIE's, sorting...", diecount);
    wrap_here ("");
    gdb_flush (gdb_stdout);
  }
       do_cleanups (old_chain);
     }
   pst->readin = 1;
 }
    }
}
