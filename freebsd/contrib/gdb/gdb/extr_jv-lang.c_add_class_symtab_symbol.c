
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct blockvector {int dummy; } ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 int BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 int BLOCK_DICT (int ) ;
 int GLOBAL_BLOCK ;
 int dict_add_symbol (int ,struct symbol*) ;
 struct symtab* get_java_class_symtab () ;

__attribute__((used)) static void
add_class_symtab_symbol (struct symbol *sym)
{
  struct symtab *symtab = get_java_class_symtab ();
  struct blockvector *bv = BLOCKVECTOR (symtab);
  dict_add_symbol (BLOCK_DICT (BLOCKVECTOR_BLOCK (bv, GLOBAL_BLOCK)), sym);
}
