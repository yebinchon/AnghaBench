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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (char *arg, int from_tty)
{
  char *p;

  if (arg == 0)
    p = "make";
  else
    {
      p = FUNC3 (sizeof ("make ") + FUNC2 (arg));
      FUNC1 (p, "make ");
      FUNC1 (p + sizeof ("make ") - 1, arg);
    }

  FUNC0 (p, from_tty);
}