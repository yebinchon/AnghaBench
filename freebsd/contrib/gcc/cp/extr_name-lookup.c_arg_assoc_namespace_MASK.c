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
struct arg_lookup {scalar_t__ args; int /*<<< orphan*/  name; int /*<<< orphan*/  namespaces; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12 (struct arg_lookup *k, tree scope)
{
  tree value;

  if (FUNC10 (scope, k->namespaces))
    return 0;
  k->namespaces = FUNC11 (scope, NULL_TREE, k->namespaces);

  /* Check out our super-users.  */
  for (value = FUNC0 (scope); value;
       value = FUNC3 (value))
    if (FUNC12 (k, FUNC4 (value)))
      return true;

  value = FUNC9 (k->name, scope);
  if (!value)
    return false;

  for (; value; value = FUNC2 (value))
    {
      /* We don't want to find arbitrary hidden functions via argument
	 dependent lookup.  We only want to find friends of associated
	 classes.  */
      if (FUNC8 (FUNC1 (value)))
	{
	  tree args;

	  for (args = k->args; args; args = FUNC3 (args))
	    if (FUNC7 (FUNC5 (args),
					      FUNC1 (value)))
	      break;
	  if (!args)
	    continue;
	}

      if (FUNC6 (k, FUNC1 (value)))
	return true;
    }

  return false;
}