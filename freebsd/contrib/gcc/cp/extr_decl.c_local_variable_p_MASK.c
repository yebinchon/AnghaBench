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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 

int
FUNC4 (tree t)
{
  if ((FUNC2 (t) == VAR_DECL
       /* A VAR_DECL with a context that is a _TYPE is a static data
	  member.  */
       && !FUNC3 (FUNC0 (t))
       /* Any other non-local variable must be at namespace scope.  */
       && !FUNC1 (t))
      || (FUNC2 (t) == PARM_DECL))
    return 1;

  return 0;
}