
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int VOID_TYPE_P (int ) ;
 int build_local_temp (int ) ;
 int build_target_expr (int ,int ) ;
 int gcc_assert (int) ;

tree
force_target_expr (tree type, tree init)
{
  tree slot;

  gcc_assert (!VOID_TYPE_P (type));

  slot = build_local_temp (type);
  return build_target_expr (slot, init);
}
