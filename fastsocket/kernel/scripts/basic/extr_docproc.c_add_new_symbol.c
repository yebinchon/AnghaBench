
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symfile {int symbolcnt; TYPE_1__* symbollist; } ;
struct TYPE_3__ {int name; } ;


 TYPE_1__* realloc (TYPE_1__*,int) ;
 int strdup (char*) ;

__attribute__((used)) static void add_new_symbol(struct symfile *sym, char * symname)
{
 sym->symbollist =
          realloc(sym->symbollist, (sym->symbolcnt + 1) * sizeof(char *));
 sym->symbollist[sym->symbolcnt++].name = strdup(symname);
}
