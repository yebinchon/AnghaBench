
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int * DECL_INITIAL (int ) ;
 int TREE_READONLY (int ) ;
 int * error_mark_node ;
 scalar_t__ flag_zero_initialized_in_bss ;
 scalar_t__ initializer_zerop (int *) ;

__attribute__((used)) static bool
bss_initializer_p (tree decl)
{
  return (DECL_INITIAL (decl) == ((void*)0)
   || DECL_INITIAL (decl) == error_mark_node
   || (flag_zero_initialized_in_bss


       && !TREE_READONLY (decl)
       && initializer_zerop (DECL_INITIAL (decl))));
}
