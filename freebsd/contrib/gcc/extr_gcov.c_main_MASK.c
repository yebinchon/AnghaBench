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
 int /*<<< orphan*/  FUNC0 () ; 
 int optind ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6 (int argc, char **argv)
{
  int argno;

  /* Unlock the stdio streams.  */
  FUNC5 ();

  FUNC0 ();

  argno = FUNC2 (argc, argv);
  if (optind == argc)
    FUNC1 (true);

  for (; argno != argc; argno++)
    {
      FUNC4 ();

      FUNC3 (argv[argno]);
    }

  return 0;
}