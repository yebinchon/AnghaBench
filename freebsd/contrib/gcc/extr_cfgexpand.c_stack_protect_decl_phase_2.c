
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int stack_protect_decl_phase (int ) ;

__attribute__((used)) static bool
stack_protect_decl_phase_2 (tree decl)
{
  return stack_protect_decl_phase (decl) == 2;
}
