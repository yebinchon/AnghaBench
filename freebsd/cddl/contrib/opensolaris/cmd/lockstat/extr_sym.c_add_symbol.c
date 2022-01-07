
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; uintptr_t addr; size_t size; } ;
typedef TYPE_1__ syment_t ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int maxsyms ;
 int nsyms ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int stderr ;
 TYPE_1__* symbol_table ;

__attribute__((used)) static void
add_symbol(char *name, uintptr_t addr, size_t size)
{
 syment_t *sep;

 if (nsyms >= maxsyms) {
  maxsyms += 10000;
  symbol_table = realloc(symbol_table, maxsyms * sizeof (*sep));
  if (symbol_table == ((void*)0)) {
   (void) fprintf(stderr, "can't allocate symbol table\n");
   exit(3);
  }
 }
 sep = &symbol_table[nsyms++];

 sep->name = name;
 sep->addr = addr;
 sep->size = size;
}
