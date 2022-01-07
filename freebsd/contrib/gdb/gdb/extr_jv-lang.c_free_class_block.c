
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 int BLOCK_DICT (struct block*) ;
 int GLOBAL_BLOCK ;
 int dict_free (int ) ;

__attribute__((used)) static void
free_class_block (struct symtab *symtab)
{
  struct blockvector *bv = BLOCKVECTOR (symtab);
  struct block *bl = BLOCKVECTOR_BLOCK (bv, GLOBAL_BLOCK);

  dict_free (BLOCK_DICT (bl));
}
