
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree_ann_common_t ;
typedef int tree ;


 scalar_t__ create_tree_common_ann (int ) ;
 scalar_t__ tree_common_ann (int ) ;

__attribute__((used)) static inline tree_ann_common_t
get_tree_common_ann (tree t)
{
  tree_ann_common_t ann = tree_common_ann (t);
  return (ann) ? ann : create_tree_common_ann (t);
}
