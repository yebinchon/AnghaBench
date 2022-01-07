
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * cp_namespace_symtab; } ;
struct block {int dummy; } ;


 int BLOCKVECTOR (int *) ;
 struct block* BLOCKVECTOR_BLOCK (int ,int ) ;
 int FIRST_LOCAL_BLOCK ;
 int initialize_namespace_symtab (struct objfile*) ;

__attribute__((used)) static struct block *
get_possible_namespace_block (struct objfile *objfile)
{
  if (objfile->cp_namespace_symtab == ((void*)0))
    initialize_namespace_symtab (objfile);

  return BLOCKVECTOR_BLOCK (BLOCKVECTOR (objfile->cp_namespace_symtab),
       FIRST_LOCAL_BLOCK);
}
