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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;

  if (args == 0)
    {
      if (FUNC5 ("Delete all auto-display expressions? "))
	FUNC1 ();
      FUNC3 ();
      return;
    }

  while (*p)
    {
      p1 = p;
      while (*p1 >= '0' && *p1 <= '9')
	p1++;
      if (*p1 && *p1 != ' ' && *p1 != '\t')
	FUNC4 ("Arguments must be display numbers.");

      num = FUNC0 (p);

      FUNC2 (num);

      p = p1;
      while (*p == ' ' || *p == '\t')
	p++;
    }
  FUNC3 ();
}