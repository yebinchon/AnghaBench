
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct int_tree_map {int * to; } ;
struct TYPE_3__ {int hti; } ;
typedef TYPE_1__ referenced_var_iterator ;


 scalar_t__ next_htab_element (int *) ;

__attribute__((used)) static inline tree
next_referenced_var (referenced_var_iterator *iter)
{
  struct int_tree_map *itm;
  itm = (struct int_tree_map *) next_htab_element (&iter->hti);
  if (!itm)
    return ((void*)0);
  return itm->to;
}
