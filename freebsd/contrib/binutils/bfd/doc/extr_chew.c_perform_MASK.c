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
typedef  int /*<<< orphan*/  dict_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  idx ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  ptr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stack ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tos ; 
 scalar_t__ warning ; 

__attribute__((used)) static void
FUNC8 ()
{
  tos = stack;

  while (FUNC1 (ptr, idx))
    {
      /* It's worth looking through the command list.  */
      if (FUNC4 (ptr, idx))
	{
	  char *next;
	  dict_type *word;

	  (void) FUNC6 (FUNC0 (ptr, idx), &next);

	  word = FUNC5 (next);

	  if (word)
	    {
	      FUNC2 (word);
	    }
	  else
	    {
	      if (warning)
		FUNC3 (stderr, "warning, %s is not recognised\n", next);
	      FUNC7 ();
	    }

	}
      else
	FUNC7 ();
    }
}