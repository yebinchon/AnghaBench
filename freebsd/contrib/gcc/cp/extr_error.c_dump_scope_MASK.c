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
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 int TFF_CHASE_TYPEDEF ; 
 int TFF_RETURN_TYPE ; 
 int TFF_SCOPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (tree scope, int flags)
{
  int f = ~TFF_RETURN_TYPE & (flags & (TFF_SCOPE | TFF_CHASE_TYPEDEF));

  if (scope == NULL_TREE)
    return;

  if (FUNC1 (scope) == NAMESPACE_DECL)
    {
      if (scope != global_namespace)
	{
	  FUNC2 (scope, f);
	  FUNC5 (cxx_pp);
	}
    }
  else if (FUNC0 (scope))
    {
      FUNC4 (scope, f);
      FUNC5 (cxx_pp);
    }
  else if ((flags & TFF_SCOPE) && FUNC1 (scope) == FUNCTION_DECL)
    {
      FUNC3 (scope, f);
      FUNC5 (cxx_pp);
    }
}