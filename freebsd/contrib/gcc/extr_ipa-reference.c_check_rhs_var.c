
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * ipa_reference_local_vars_info_t ;


 int check_tree (int *,int ,int) ;
 int look_for_address_of (int ) ;

__attribute__((used)) static void
check_rhs_var (ipa_reference_local_vars_info_t local, tree t)
{
  look_for_address_of (t);

  if (local == ((void*)0))
    return;

  check_tree(local, t, 0);
}
