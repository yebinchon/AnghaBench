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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int*,int) ; 

rtx
FUNC12 (unsigned int regno, enum machine_mode *pmode, int *punsignedp)
{
  tree arg;

  for (arg = FUNC0 (current_function_decl); arg;
       arg = FUNC7 (arg))
    if (FUNC6 (FUNC2 (arg))
	&& FUNC5 (FUNC2 (arg)) == regno
	&& FUNC9 (FUNC1 (arg)) == FUNC9 (FUNC8 (arg)))
      {
	enum machine_mode mode = FUNC9 (FUNC8 (arg));
	int unsignedp = FUNC10 (FUNC8 (arg));

	mode = FUNC11 (FUNC8 (arg), mode, &unsignedp, 1);
	if (mode == FUNC4 (FUNC2 (arg))
	    && mode != FUNC3 (arg))
	  {
	    *pmode = FUNC3 (arg);
	    *punsignedp = unsignedp;
	    return FUNC2 (arg);
	  }
      }

  return 0;
}