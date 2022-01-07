
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MODIFY_EXPR ;
 int build2 (int ,int ,int ,int ) ;
 int void_type_node ;

__attribute__((used)) static tree
sra_build_assignment (tree dst, tree src)
{


  return build2 (MODIFY_EXPR, void_type_node, dst, src);
}
