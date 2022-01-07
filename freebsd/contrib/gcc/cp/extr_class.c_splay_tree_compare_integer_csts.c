
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ splay_tree_key ;


 int tree_int_cst_compare (int ,int ) ;

__attribute__((used)) static int
splay_tree_compare_integer_csts (splay_tree_key k1, splay_tree_key k2)
{
  return tree_int_cst_compare ((tree) k1, (tree) k2);
}
