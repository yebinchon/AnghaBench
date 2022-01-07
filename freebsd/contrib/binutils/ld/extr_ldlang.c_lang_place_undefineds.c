
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ ldlang_undef_chain_list_type ;


 int insert_undefined (int ) ;
 TYPE_1__* ldlang_undef_chain_list_head ;

__attribute__((used)) static void
lang_place_undefineds (void)
{
  ldlang_undef_chain_list_type *ptr;

  for (ptr = ldlang_undef_chain_list_head; ptr != ((void*)0); ptr = ptr->next)
    insert_undefined (ptr->name);
}
