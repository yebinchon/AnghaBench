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

/* Variables and functions */
 char** FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char***) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*) ; 

int
FUNC9 (const char **test_data)
{
  int argc_after, argc_before;
  char ** argv_before, ** argv_after;
  int i, j, k, fails, failed;

  i = j = fails = 0;
  /* Loop over all the tests */
  while (test_data[j])
    {
      /* Write test data */
      FUNC8 (i, test_data[j++]);
      /* Copy argv before */
      argv_before = FUNC0 ((char **) &test_data[j]);

      /* Count argc before/after */
      argc_before = 0;
      argc_after = 0;
      while (test_data[j + argc_before])
        argc_before++;
      j += argc_before + 1; /* Skip null */
      while (test_data[j + argc_after])
        argc_after++;

      /* Copy argv after */
      argv_after = FUNC0 ((char **) &test_data[j]);

      /* Run all possible replaces */
      for (k = 0; k < argc_before; k++)
        FUNC5 (argv_before[k]);
      for (k = 0; k < argc_after; k++)
        FUNC5 (argv_after[k]);

      /* Run test: Expand arguments */
      FUNC2 (&argc_before, &argv_before);

      failed = 0;
      /* Compare size first */
      if (argc_before != argc_after)
        {
          FUNC4 ("FAIL: test-expandargv-%d. Number of arguments don't match.\n", i);
	  failed++;
        }
      /* Compare each of the argv's ... */
      else
        for (k = 0; k < argc_after; k++)
          if (FUNC7 (argv_before[k], argv_after[k], FUNC6(argv_after[k])) != 0)
            {
              FUNC4 ("FAIL: test-expandargv-%d. Arguments don't match.\n", i);
              failed++;
            }

      if (!failed)
        FUNC4 ("PASS: test-expandargv-%d.\n", i);
      else
        fails++;

      FUNC3 (argv_before);
      FUNC3 (argv_after);
      /* Advance to next test */
      j += argc_after + 1;
      /* Erase test file */
      FUNC1 (i);
      i++;
    }
  return fails;
}