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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int
FUNC2 (char * operand)
{
  char *p = operand;
  int i_used = 0, u_used = 0, d_used = 0;

  while (*++p != ']')
    {
      if (*p == ',' || *p == ' ')
        continue;

      else if (*p == 'i')
        i_used = 1;
      else if (*p == 'u')
        u_used = 1;
      else if (*p == 'd')
        d_used = 1;
      else
        FUNC1 (FUNC0("Illegal `cinv' parameter: `%c'"), *p);
    }

  return 0;
}