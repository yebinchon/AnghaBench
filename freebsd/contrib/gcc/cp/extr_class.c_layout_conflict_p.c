
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree ;
struct TYPE_3__ {scalar_t__ key; } ;


 int check_subobject_offset ;
 TYPE_1__* splay_tree_max (int ) ;
 int walk_subobject_offsets (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
layout_conflict_p (tree type,
     tree offset,
     splay_tree offsets,
     int vbases_p)
{
  splay_tree_node max_node;



  max_node = splay_tree_max (offsets);


  if (!max_node)
    return 0;

  return walk_subobject_offsets (type, check_subobject_offset, offset,
     offsets, (tree) (max_node->key),
     vbases_p);
}
