
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int build_block_object_dispose_decl () ;
 int build_function_call (int ,int ) ;
 int build_int_cst (int ,int) ;
 int integer_type_node ;
 int tree_cons (int ,int ,int ) ;

tree build_block_object_dispose_call_exp (tree src, int flag)
{
  tree func_params = tree_cons (NULL_TREE, src,
           tree_cons (NULL_TREE,
         build_int_cst (integer_type_node, flag),
        NULL_TREE));
  return build_function_call (build_block_object_dispose_decl (), func_params);
}
