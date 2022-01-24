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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FULL_ESCAPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC12 (tree t)
{
  /* If the variable has the "used" attribute, treat it as if it had a
     been touched by the devil.  */
  tree type = FUNC8 (FUNC7 (t), false, false);
  if (!type) return;

  if (FUNC10 ("used", FUNC0 (t)))
    {
      FUNC11 (type, FULL_ESCAPE);
      return;
    }

  /* Do not want to do anything with volatile except mark any
     function that uses one to be not const or pure.  */
  if (FUNC6 (t)) 
    return;

  /* Do not care about a local automatic that is not static.  */
  if (!FUNC5 (t) && !FUNC1 (t))
    return;

  if (FUNC1 (t) || FUNC3 (t))
    {
      /* If the front end set the variable to be READONLY and
	 constant, we can allow this variable in pure or const
	 functions but the scope is too large for our analysis to set
	 these bits ourselves.  */
      
      if (FUNC4 (t)
	  && FUNC2 (t)
	  && FUNC9 (FUNC2 (t)))
	; /* Read of a constant, do not change the function state.  */
      else 
	{
	  /* The type escapes for all public and externs. */
	  FUNC11 (type, FULL_ESCAPE);
	}
    }
}