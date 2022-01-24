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
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (tree newtype, tree oldtype)
{
  tree newrettype, oldrettype;
  tree newargs, oldargs;
  tree trytype, tryargs;

  /* Accept the return type of the new declaration if same modes.  */
  oldrettype = FUNC1 (oldtype);
  newrettype = FUNC1 (newtype);

  if (FUNC5 (oldrettype) != FUNC5 (newrettype))
    return 0;

  oldargs = FUNC3 (oldtype);
  newargs = FUNC3 (newtype);
  tryargs = newargs;

  while (oldargs || newargs)
    {
      if (!oldargs
	  || !newargs
	  || !FUNC2 (oldargs)
	  || !FUNC2 (newargs)
	  || FUNC5 (FUNC2 (oldargs))
	     != FUNC5 (FUNC2 (newargs)))
	return 0;

      oldargs = FUNC0 (oldargs);
      newargs = FUNC0 (newargs);
    }

  trytype = FUNC6 (newrettype, tryargs);
  return FUNC7 (trytype, FUNC4 (oldtype));
}