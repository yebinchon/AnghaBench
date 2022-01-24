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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MIN_MODE_VECTOR_FLOAT ; 
 int MIN_MODE_VECTOR_INT ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ VECTOR_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum machine_mode
FUNC10 (tree type)
{
  enum machine_mode mode = FUNC5 (type);

  if (FUNC3 (type) == VECTOR_TYPE && !FUNC7 (mode))
    {
      HOST_WIDE_INT size = FUNC9 (type);
      if ((size == 8 || size == 16)
	  /* ??? Generic code allows us to create width 1 vectors.  Ignore.  */
	  && FUNC6 (type) > 1)
	{
	  enum machine_mode innermode = FUNC5 (FUNC4 (type));

	  if (FUNC3 (FUNC4 (type)) == REAL_TYPE)
	    mode = MIN_MODE_VECTOR_FLOAT;
	  else
	    mode = MIN_MODE_VECTOR_INT;

	  /* Get the mode which has this inner mode and number of units.  */
	  for (; mode != VOIDmode; mode = FUNC2 (mode))
	    if (FUNC1 (mode) == FUNC6 (type)
		&& FUNC0 (mode) == innermode)
	      return mode;

	  FUNC8 ();
	}
    }

  return mode;
}