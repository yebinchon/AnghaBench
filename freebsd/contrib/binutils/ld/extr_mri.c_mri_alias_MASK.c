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
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*) ; 

void
FUNC4 (const char *want, const char *is, int isn)
{
  if (!is)
    {
      char buf[20];

      /* Some sections are digits.  */
      FUNC2 (buf, "%d", isn);

      is = FUNC3 (buf);

      if (is == NULL)
	FUNC0 ();
    }

  FUNC1 (&alias, is, 0, want, 0, 0);
}