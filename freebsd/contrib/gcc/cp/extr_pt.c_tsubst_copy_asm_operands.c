
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef int * tree ;


 int * RECUR (int *) ;
 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 scalar_t__ TREE_LIST ;
 int * TREE_PURPOSE (int *) ;
 int * TREE_VALUE (int *) ;
 int * tree_cons (int *,int *,int *) ;
 int * tsubst_copy_and_build (int *,int *,int ,int *,int,int) ;
 int * void_list_node ;
 int * void_type_node ;

__attribute__((used)) static tree
tsubst_copy_asm_operands (tree t, tree args, tsubst_flags_t complain,
     tree in_decl)
{


  tree purpose, value, chain;

  if (t == ((void*)0))
    return t;

  if (TREE_CODE (t) != TREE_LIST)
    return tsubst_copy_and_build (t, args, complain, in_decl,
                     0,
                                         0);

  if (t == void_list_node)
    return t;

  purpose = TREE_PURPOSE (t);
  if (purpose)
    purpose = tsubst_copy_asm_operands (purpose, args, complain, in_decl);
  value = TREE_VALUE (t);
  if (value)
    value = tsubst_copy_asm_operands (value, args, complain, in_decl);
  chain = TREE_CHAIN (t);
  if (chain && chain != void_type_node)
    chain = tsubst_copy_asm_operands (chain, args, complain, in_decl);
  return tree_cons (purpose, value, chain);

}
