
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int filename; scalar_t__ readin; } ;


 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 int printf_filtered (char*,...) ;
 int psymtab_to_symtab_1 (struct partial_symtab*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
dwarf2_psymtab_to_symtab (struct partial_symtab *pst)
{

  if (pst != ((void*)0))
    {
      if (pst->readin)
 {
   warning ("bug: psymtab for %s is already read in.", pst->filename);
 }
      else
 {
   if (info_verbose)
     {
       printf_filtered ("Reading in symbols for %s...", pst->filename);
       gdb_flush (gdb_stdout);
     }

   psymtab_to_symtab_1 (pst);


   if (info_verbose)
     printf_filtered ("done.\n");
 }
    }
}
