
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int filename; } ;
struct objfile {int dummy; } ;


 int SECT_OFF_TEXT (struct objfile*) ;
 int current_source_end_addr ;
 int current_source_start_addr ;
 struct symtab* end_symtab (int ,struct objfile*,int ) ;
 int free_named_symtabs (int ) ;
 int * last_source_file ;
 int last_source_start_addr ;

__attribute__((used)) static void
coff_end_symtab (struct objfile *objfile)
{
  struct symtab *symtab;

  last_source_start_addr = current_source_start_addr;

  symtab = end_symtab (current_source_end_addr, objfile, SECT_OFF_TEXT (objfile));

  if (symtab != ((void*)0))
    free_named_symtabs (symtab->filename);


  last_source_file = ((void*)0);
}
