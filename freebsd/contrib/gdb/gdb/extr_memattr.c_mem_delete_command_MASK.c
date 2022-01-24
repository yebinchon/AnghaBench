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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  target_dcache ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;

  FUNC1 (target_dcache);

  if (p == 0)
    {
      if (FUNC6 ("Delete all memory regions? "))
	FUNC4 ();
      FUNC2 ();
      return;
    }

  while (*p)
    {
      p1 = p;
      while (*p1 >= '0' && *p1 <= '9')
	p1++;
      if (*p1 && *p1 != ' ' && *p1 != '\t')
	FUNC3 ("Arguments must be memory region numbers.");

      num = FUNC0 (p);
      FUNC5 (num);

      p = p1;
      while (*p == ' ' || *p == '\t')
	p++;
    }

  FUNC2 ();
}