
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ ldlang_undef_chain_list_type ;


 int insert_undefined (int ) ;
 TYPE_1__* ldlang_undef_chain_list_head ;
 int * output_bfd ;
 TYPE_1__* stat_alloc (int) ;
 int xstrdup (char const* const) ;

void
ldlang_add_undef (const char *const name)
{
  ldlang_undef_chain_list_type *new =
    stat_alloc (sizeof (ldlang_undef_chain_list_type));

  new->next = ldlang_undef_chain_list_head;
  ldlang_undef_chain_list_head = new;

  new->name = xstrdup (name);

  if (output_bfd != ((void*)0))
    insert_undefined (new->name);
}
