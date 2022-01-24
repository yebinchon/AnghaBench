#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_2__ {void* x_current_class_ref; void* x_current_class_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* NULL_TREE ; 
 scalar_t__ cfun ; 
 void* FUNC1 (void*,void*) ; 
 TYPE_1__* cp_function_chain ; 
 void* current_class_ptr ; 
 void* current_class_ref ; 
 int /*<<< orphan*/  dk_no_deferred ; 
 int /*<<< orphan*/  function_depth ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_warning_or_error ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

tree
FUNC7 (tree fn, tree type, tree arg)
{
  tree saved_class_ptr = NULL_TREE;
  tree saved_class_ref = NULL_TREE;

  /* This default argument came from a template.  Instantiate the
     default argument here, not in tsubst.  In the case of
     something like:

       template <class T>
       struct S {
	 static T t();
	 void f(T = t());
       };

     we must be careful to do name lookup in the scope of S<T>,
     rather than in the current class.  */
  FUNC4 (fn);
  /* The "this" pointer is not valid in a default argument.  */
  if (cfun)
    {
      saved_class_ptr = current_class_ptr;
      cp_function_chain->x_current_class_ptr = NULL_TREE;
      saved_class_ref = current_class_ref;
      cp_function_chain->x_current_class_ref = NULL_TREE;
    }

  FUNC5(dk_no_deferred);
  /* The default argument expression may cause implicitly defined
     member functions to be synthesized, which will result in garbage
     collection.  We must treat this situation as if we were within
     the body of function so as to avoid collecting live data on the
     stack.  */
  ++function_depth;
  arg = FUNC6 (arg, FUNC0 (fn),
		     tf_warning_or_error, NULL_TREE,
		     /*integral_constant_expression_p=*/false);
  --function_depth;
  FUNC3();

  /* Restore the "this" pointer.  */
  if (cfun)
    {
      cp_function_chain->x_current_class_ptr = saved_class_ptr;
      cp_function_chain->x_current_class_ref = saved_class_ref;
    }

  FUNC2 (fn);

  /* Make sure the default argument is reasonable.  */
  arg = FUNC1 (type, arg);

  return arg;
}