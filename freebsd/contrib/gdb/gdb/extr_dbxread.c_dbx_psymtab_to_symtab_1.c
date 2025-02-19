
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partial_symtab {int readin; int number_of_dependencies; TYPE_1__* objfile; struct partial_symtab** dependencies; int filename; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int obfd; } ;


 int FILE_STRING_OFFSET (struct partial_symtab*) ;
 scalar_t__ LDSYMLEN (struct partial_symtab*) ;
 int SEEK_SET ;
 int SYMBOL_OFFSET (struct partial_symtab*) ;
 int SYMBOL_SIZE (struct partial_symtab*) ;
 int bfd_seek (int ,int ,int ) ;
 int buildsym_init () ;
 int do_cleanups (struct cleanup*) ;
 int file_string_table_offset ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int ,int ) ;
 int printf_filtered (char*,int ) ;
 int read_ofile_symtab (struct partial_symtab*) ;
 int really_free_pendings ;
 int stabsread_init () ;
 int symbol_size ;
 int wrap_here (char*) ;

__attribute__((used)) static void
dbx_psymtab_to_symtab_1 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;

  if (!pst)
    return;

  if (pst->readin)
    {
      fprintf_unfiltered (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
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
 dbx_psymtab_to_symtab_1 (pst->dependencies[i]);
      }

  if (LDSYMLEN (pst))
    {

      stabsread_init ();
      buildsym_init ();
      old_chain = make_cleanup (really_free_pendings, 0);
      file_string_table_offset = FILE_STRING_OFFSET (pst);
      symbol_size = SYMBOL_SIZE (pst);


      bfd_seek (pst->objfile->obfd, SYMBOL_OFFSET (pst), SEEK_SET);
      read_ofile_symtab (pst);

      do_cleanups (old_chain);
    }

  pst->readin = 1;
}
