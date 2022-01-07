
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union type_stack_elt {int dummy; } type_stack_elt ;


 union type_stack_elt* type_stack ;
 int type_stack_depth ;
 int type_stack_size ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static void
check_type_stack_depth (void)
{
  if (type_stack_depth == type_stack_size)
    {
      type_stack_size *= 2;
      type_stack = (union type_stack_elt *)
 xrealloc ((char *) type_stack, type_stack_size * sizeof (*type_stack));
    }
}
