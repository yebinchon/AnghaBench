
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int target ;
struct symbol {int rb_node; } ;
struct TYPE_2__ {int top_idx; int index; int * top; } ;
struct map_browser {TYPE_1__ b; int map; } ;


 struct symbol* map__find_symbol (int ,int ,int *) ;
 struct symbol* map__find_symbol_by_name (int ,char*,int *) ;
 int strtoull (char*,int *,int) ;
 int * symbol__browser_index (struct symbol*) ;
 char tolower (char) ;
 int ui_entry__read (char*,char*,int,int) ;
 int ui_helpline__fpush (char*,char*) ;

__attribute__((used)) static int map_browser__search(struct map_browser *self)
{
 char target[512];
 struct symbol *sym;
 int err = ui_entry__read("Search by name/addr", target, sizeof(target), 40);

 if (err)
  return err;

 if (target[0] == '0' && tolower(target[1]) == 'x') {
  u64 addr = strtoull(target, ((void*)0), 16);
  sym = map__find_symbol(self->map, addr, ((void*)0));
 } else
  sym = map__find_symbol_by_name(self->map, target, ((void*)0));

 if (sym != ((void*)0)) {
  u32 *idx = symbol__browser_index(sym);

  self->b.top = &sym->rb_node;
  self->b.index = self->b.top_idx = *idx;
 } else
  ui_helpline__fpush("%s not found!", target);

 return 0;
}
