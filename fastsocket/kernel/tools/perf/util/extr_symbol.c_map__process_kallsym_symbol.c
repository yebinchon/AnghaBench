
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct process_kallsyms_args {TYPE_2__* map; TYPE_1__* dso; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {struct rb_root* symbols; } ;


 int ENOMEM ;
 int kallsyms2elf_type (char) ;
 struct symbol* symbol__new (int ,int ,int ,char const*) ;
 int symbol_type__is_a (char,size_t) ;
 int symbols__insert (struct rb_root*,struct symbol*) ;

__attribute__((used)) static int map__process_kallsym_symbol(void *arg, const char *name,
           char type, u64 start)
{
 struct symbol *sym;
 struct process_kallsyms_args *a = arg;
 struct rb_root *root = &a->dso->symbols[a->map->type];

 if (!symbol_type__is_a(type, a->map->type))
  return 0;






 sym = symbol__new(start, 0, kallsyms2elf_type(type), name);
 if (sym == ((void*)0))
  return -ENOMEM;




 symbols__insert(root, sym);

 return 0;
}
