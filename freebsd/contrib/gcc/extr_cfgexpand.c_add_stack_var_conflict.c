
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int) ;
 int* stack_vars_conflict ;
 size_t stack_vars_conflict_alloc ;
 size_t triangular_index (size_t,size_t) ;

__attribute__((used)) static void
add_stack_var_conflict (size_t x, size_t y)
{
  size_t index = triangular_index (x, y);
  gcc_assert (index < stack_vars_conflict_alloc);
  stack_vars_conflict[index] = 1;
}
