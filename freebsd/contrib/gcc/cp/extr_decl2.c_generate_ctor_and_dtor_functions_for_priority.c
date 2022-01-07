
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef TYPE_2__* priority_info ;
typedef int location_t ;
struct TYPE_5__ {scalar_t__ destructions_p; scalar_t__ initializations_p; } ;
struct TYPE_4__ {int value; scalar_t__ key; } ;


 int DEFAULT_INIT_PRIORITY ;
 int generate_ctor_or_dtor_function (int,int,int *) ;
 scalar_t__ static_ctors ;
 scalar_t__ static_dtors ;

__attribute__((used)) static int
generate_ctor_and_dtor_functions_for_priority (splay_tree_node n, void * data)
{
  location_t *locus = (location_t *) data;
  int priority = (int) n->key;
  priority_info pi = (priority_info) n->value;



  if (pi->initializations_p
      || (priority == DEFAULT_INIT_PRIORITY && static_ctors))
    generate_ctor_or_dtor_function ( 1, priority, locus);
  if (pi->destructions_p
      || (priority == DEFAULT_INIT_PRIORITY && static_dtors))
    generate_ctor_or_dtor_function ( 0, priority, locus);


  return 0;
}
