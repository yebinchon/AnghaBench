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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC9 (tree tmpl)
{
  return (FUNC6 (tmpl)
	  && FUNC2 (tmpl)
	  /* DECL_CLASS_SCOPE_P holds of T::f even if T is a template
	     parameter.  */
	  && FUNC1 (FUNC3 (tmpl))
	  /* The optimized lookup depends on the fact that the
	     template arguments for the member function template apply
	     purely to the containing class, which is not true if the
	     containing class is an explicit or partial
	     specialization.  */
	  && !FUNC0 (FUNC3 (tmpl))
	  && !FUNC7 (tmpl)
	  && !FUNC4 (tmpl)
	  /* It is possible to have a template that is not a member
	     template and is not a member of a template class:

	     template <typename T>
	     struct S { friend A::f(); };

	     Here, the friend function is a template, but the context does
	     not have template information.  The optimized lookup relies
	     on having ARGS be the template arguments for both the class
	     and the function template.  */
	  && !FUNC5 (FUNC8 (tmpl)));
}