
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_SIZE_UNIT (int ) ;
 scalar_t__ flag_stack_protect ;
 int optimize ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static bool
defer_stack_allocation (tree var, bool toplevel)
{


  if (flag_stack_protect)
    return 1;





  if (toplevel && optimize < 2)
    return 0;







  if (optimize == 0 && tree_low_cst (DECL_SIZE_UNIT (var), 1) < 32)
    return 0;

  return 1;
}
