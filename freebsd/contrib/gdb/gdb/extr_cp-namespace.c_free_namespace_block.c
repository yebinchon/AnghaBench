
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct block {int dummy; } ;


 int BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (int ,int ) ;
 int BLOCK_DICT (struct block*) ;
 int FIRST_LOCAL_BLOCK ;
 int dict_free (int ) ;
 int gdb_assert (int ) ;

__attribute__((used)) static void
free_namespace_block (struct symtab *symtab)
{
  struct block *possible_namespace_block;

  possible_namespace_block = BLOCKVECTOR_BLOCK (BLOCKVECTOR (symtab),
      FIRST_LOCAL_BLOCK);
  gdb_assert (possible_namespace_block != ((void*)0));
  dict_free (BLOCK_DICT (possible_namespace_block));
}
