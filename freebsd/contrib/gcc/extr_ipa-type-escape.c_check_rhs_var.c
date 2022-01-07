
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int check_tree (int ) ;
 int look_for_address_of (int ) ;

__attribute__((used)) static void
check_rhs_var (tree t)
{
  look_for_address_of (t);
  check_tree(t);
}
