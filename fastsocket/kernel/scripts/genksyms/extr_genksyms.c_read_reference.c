
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int is_override; } ;
struct string_list {scalar_t__ tag; int string; struct string_list* next; } ;
typedef int FILE ;


 scalar_t__ SYM_NORMAL ;
 struct symbol* add_reference_symbol (int ,scalar_t__,struct string_list*,int) ;
 int feof (int *) ;
 int free_node (struct string_list*) ;
 struct string_list* read_node (int *) ;
 int strcmp (int ,char*) ;
 int xstrdup (int ) ;

__attribute__((used)) static void read_reference(FILE *f)
{
 while (!feof(f)) {
  struct string_list *defn = ((void*)0);
  struct string_list *sym, *def;
  int is_extern = 0, is_override = 0;
  struct symbol *subsym;

  sym = read_node(f);
  if (sym && sym->tag == SYM_NORMAL &&
      !strcmp(sym->string, "override")) {
   is_override = 1;
   free_node(sym);
   sym = read_node(f);
  }
  if (!sym)
   continue;
  def = read_node(f);
  if (def && def->tag == SYM_NORMAL &&
      !strcmp(def->string, "extern")) {
   is_extern = 1;
   free_node(def);
   def = read_node(f);
  }
  while (def) {
   def->next = defn;
   defn = def;
   def = read_node(f);
  }
  subsym = add_reference_symbol(xstrdup(sym->string), sym->tag,
           defn, is_extern);
  subsym->is_override = is_override;
  free_node(sym);
 }
}
