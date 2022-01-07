
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int splay_tree_key ;
typedef TYPE_1__* alias_set_entry ;
struct TYPE_3__ {int children; scalar_t__ has_zero_child; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 TYPE_1__* get_alias_set_entry (scalar_t__) ;
 scalar_t__ splay_tree_lookup (int ,int ) ;

int
alias_sets_conflict_p (HOST_WIDE_INT set1, HOST_WIDE_INT set2)
{
  alias_set_entry ase;



  if (set1 == 0 || set2 == 0

      || set1 == set2)
    return 1;


  ase = get_alias_set_entry (set1);
  if (ase != 0
      && (ase->has_zero_child
   || splay_tree_lookup (ase->children,
    (splay_tree_key) set2)))
    return 1;


  ase = get_alias_set_entry (set2);
  if (ase != 0
      && (ase->has_zero_child
   || splay_tree_lookup (ase->children,
    (splay_tree_key) set1)))
    return 1;



  return 0;
}
