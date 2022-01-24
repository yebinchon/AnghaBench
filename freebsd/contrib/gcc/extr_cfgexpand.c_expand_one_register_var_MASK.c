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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree var)
{
  tree type = FUNC4 (var);
  int unsignedp = FUNC6 (type);
  enum machine_mode reg_mode
    = FUNC10 (type, FUNC1 (var), &unsignedp, 0);
  rtx x = FUNC7 (reg_mode);

  FUNC3 (var, x);

  /* Note if the object is a user variable.  */
  if (!FUNC0 (var))
    {
      FUNC9 (x);

      /* Trust user variables which have a pointer type to really
	 be pointers.  Do not trust compiler generated temporaries
	 as our type system is totally busted as it relates to
	 pointer arithmetic which translates into lots of compiler
	 generated objects with pointer types, but which are not really
	 pointers.  */
      if (FUNC2 (type))
	FUNC8 (x, FUNC5 (FUNC4 (FUNC4 (var))));
    }
}