#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ current_class_type ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ current_namespace ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

tree
FUNC4 (void)
{
  /* There are a number of cases we need to be aware of here:
			 current_class_type	current_function_decl
     global			NULL			NULL
     fn-local			NULL			SET
     class-local		SET			NULL
     class->fn			SET			SET
     fn->class			SET			SET

     Those last two make life interesting.  If we're in a function which is
     itself inside a class, we need decls to go into the fn's decls (our
     second case below).  But if we're in a class and the class itself is
     inside a function, we need decls to go into the decls for the class.  To
     achieve this last goal, we must see if, when both current_class_ptr and
     current_function_decl are set, the class was declared inside that
     function.  If so, we know to put the decls into the class's scope.  */
  if (current_function_decl && current_class_type
      && ((FUNC2 (current_function_decl)
	   && FUNC3 (FUNC0 (current_function_decl),
			   current_class_type))
	  || (FUNC1 (current_function_decl)
	      && FUNC3 (FUNC1 (current_function_decl),
			      current_class_type))))
    return current_function_decl;
  if (current_class_type)
    return current_class_type;
  if (current_function_decl)
    return current_function_decl;
  return current_namespace;
}