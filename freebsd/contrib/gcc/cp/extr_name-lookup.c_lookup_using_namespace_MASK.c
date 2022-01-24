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
struct scope_binding {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  cxx_binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 int /*<<< orphan*/  FUNC6 (struct scope_binding*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (tree name, struct scope_binding *val,
			tree usings, tree scope, int flags)
{
  tree iter;
  FUNC8 (TV_NAME_LOOKUP);
  /* Iterate over all used namespaces in current, searching for using
     directives of scope.  */
  for (iter = usings; iter; iter = FUNC3 (iter))
    if (FUNC5 (iter) == scope)
      {
	tree used = FUNC1 (FUNC4 (iter));
	cxx_binding *val1 =
	  FUNC7 (FUNC0 (used), name);
	/* Resolve ambiguities.  */
	if (val1)
	  /* LLVM LOCAL mainline */
	  FUNC6 (val, val1, flags);
      }
  FUNC2 (TV_NAME_LOOKUP, val->value != error_mark_node);
}