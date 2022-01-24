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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ OVERLOAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  input_location ; 
 int FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

bool
FUNC12 (tree x)
{
  tree name;
  bool is_valid = true;

  FUNC11 (TV_NAME_LOOKUP);
  /* Get the name of X.  */
  if (FUNC5 (x) == OVERLOAD)
    name = FUNC1 (FUNC8 (x));
  else
    name = FUNC1 (x);

  if (name)
    {
      is_valid = FUNC9 (name, x);
      if (FUNC5 (x) == TYPE_DECL)
	FUNC10 (name, x);
    }
  else if (FUNC0 (FUNC6 (x)))
    {
      /* If X is an anonymous aggregate, all of its members are
	 treated as if they were members of the class containing the
	 aggregate, for naming purposes.  */
      tree f;

      for (f = FUNC7 (FUNC6 (x)); f; f = FUNC4 (f))
	{
	  location_t save_location = input_location;
	  input_location = FUNC2 (f);
	  if (!FUNC12 (f))
	    is_valid = false;
	  input_location = save_location;
	}
    }
  FUNC3 (TV_NAME_LOOKUP, is_valid);
}