
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sub; int formal_hash; TYPE_2__* formals; } ;
typedef TYPE_1__ macro_entry ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ formal_entry ;


 int del_formal (TYPE_2__*) ;
 int free (TYPE_1__*) ;
 int hash_die (int ) ;
 int sb_kill (int *) ;

__attribute__((used)) static void
free_macro(macro_entry *macro)
{
  formal_entry *formal;

  for (formal = macro->formals; formal; )
    {
      formal_entry *f;

      f = formal;
      formal = formal->next;
      del_formal (f);
    }
  hash_die (macro->formal_hash);
  sb_kill (&macro->sub);
  free (macro);
}
