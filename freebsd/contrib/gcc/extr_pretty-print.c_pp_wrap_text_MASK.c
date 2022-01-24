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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (pretty_printer *pp, const char *start, const char *end)
{
  bool wrapping_line = FUNC2 (pp);

  while (start != end)
    {
      /* Dump anything bordered by whitespaces.  */
      {
	const char *p = start;
	while (p != end && !FUNC0 (*p) && *p != '\n')
	  ++p;
	if (wrapping_line
            && p - start >= FUNC4 (pp))
	  FUNC3 (pp);
	FUNC1 (pp, start, p);
	start = p;
      }

      if (start != end && FUNC0 (*start))
	{
	  FUNC5 (pp);
	  ++start;
	}
      if (start != end && *start == '\n')
	{
	  FUNC3 (pp);
	  ++start;
	}
    }
}