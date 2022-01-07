
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc_subobject; int alloc_node; } ;


 int alloc_node ;
 int gcc_obstack_init (int *) ;
 TYPE_1__* ht_create (int) ;
 TYPE_1__* ident_hash ;
 int string_stack ;
 int stringpool_ggc_alloc ;

void
init_stringpool (void)
{

  ident_hash = ht_create (14);
  ident_hash->alloc_node = alloc_node;
  ident_hash->alloc_subobject = stringpool_ggc_alloc;
  gcc_obstack_init (&string_stack);
}
