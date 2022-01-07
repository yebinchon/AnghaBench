
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct int_tree_map {int * to; } ;
struct TYPE_3__ {int hti; } ;
typedef TYPE_1__ referenced_var_iterator ;


 scalar_t__ first_htab_element (int *,int ) ;
 int referenced_vars ;

__attribute__((used)) static inline tree
first_referenced_var (referenced_var_iterator *iter)
{
  struct int_tree_map *itm;
  itm = (struct int_tree_map *) first_htab_element (&iter->hti,
                                                    referenced_vars);
  if (!itm)
    return ((void*)0);
  return itm->to;
}
