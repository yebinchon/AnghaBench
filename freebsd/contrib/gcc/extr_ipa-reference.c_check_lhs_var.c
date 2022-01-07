
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * ipa_reference_local_vars_info_t ;


 int check_tree (int *,int ,int) ;

__attribute__((used)) static void
check_lhs_var (ipa_reference_local_vars_info_t local, tree t)
{
  if (local == ((void*)0))
    return;

  check_tree(local, t, 1);
}
