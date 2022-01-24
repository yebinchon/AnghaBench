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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree type, tree arg1)
{
  tree t;

  /* Given an integer constant, make new constant with new type,
     appropriately sign-extended or truncated.  */
  t = FUNC7 (type, FUNC3 (arg1),
			  FUNC2 (arg1));

  t = FUNC8 (t,
		      /* Don't set the overflow when
		      	 converting a pointer  */
		      !FUNC0 (FUNC5 (arg1)),
		      (FUNC2 (arg1) < 0
		       && (FUNC6 (type)
			   < FUNC6 (FUNC5 (arg1))))
		      | FUNC4 (arg1),
		      FUNC1 (arg1));

  return t;
}