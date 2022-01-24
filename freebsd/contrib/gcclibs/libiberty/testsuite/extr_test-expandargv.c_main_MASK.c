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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_data ; 

int 
FUNC2(int argc, char **argv)
{
  int fails;
  /* Repeat for all the tests:
     - Parse data array and write into file.
       - Run replace hooks before writing to file.
     - Parse data array and build argv before/after.
       - Run replace hooks on argv before/after
     - Run expandargv.
     - Compare output of expandargv argv to after argv.
       - If they compare the same then test passes
         else the test fails. 
     - Erase test file. */

  fails = FUNC1 (test_data);
  if (!fails)
    FUNC0 (EXIT_SUCCESS);
  else
    FUNC0 (EXIT_FAILURE);
}