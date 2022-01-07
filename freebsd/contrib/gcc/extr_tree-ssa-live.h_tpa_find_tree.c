
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* tpa_p ;
struct TYPE_4__ {int* partition_to_tree_map; int uncompressed_num; } ;


 int TPA_NONE ;
 int gcc_assert (int) ;
 int tpa_num_trees (TYPE_1__*) ;

__attribute__((used)) static inline int
tpa_find_tree (tpa_p tpa, int i)
{
  int index;

  index = tpa->partition_to_tree_map[i];


  if (index != TPA_NONE && index >= tpa_num_trees (tpa))
    {
      gcc_assert (tpa->uncompressed_num != -1);
      index = TPA_NONE;
    }

  return index;
}
