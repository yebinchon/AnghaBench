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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (tree exp)
{
  /* Strip any conversions that don't change the machine mode.  */
  FUNC5 (exp);

  return (FUNC0 (exp)
	  || FUNC7 (exp) == SSA_NAME
	  || (FUNC3 (exp)
	      && ! FUNC6 (exp)
	      && ! FUNC10 (exp)
	      && ! FUNC2 (exp)
	      /* Don't regard global variables as simple.  They may be
		 allocated in ways unknown to the compiler (shared memory,
		 #pragma weak, etc).  */
	      && ! FUNC8 (exp)
	      && ! FUNC1 (exp)
	      /* Loading a static variable is unduly expensive, but global
		 registers aren't expensive.  */
	      && (! FUNC9 (exp) || FUNC4 (exp))));
}