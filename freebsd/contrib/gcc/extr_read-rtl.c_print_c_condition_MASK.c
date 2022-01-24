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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  joined_conditions ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC4 (const char *cond)
{
  const char **halves = (const char **) FUNC0 (joined_conditions, &cond);
  if (halves != 0)
    {
      FUNC2 ("(");
      FUNC4 (halves[1]);
      FUNC2 (" && ");
      FUNC4 (halves[2]);
      FUNC2 (")");
    }
  else
    {
      FUNC3 ('\n', stdout);
      FUNC1 (cond);
      FUNC2 ("(%s)", cond);
    }
}