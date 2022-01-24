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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  flag_iso ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  parse_in ; 
 size_t FUNC4 (char const*) ; 

void
FUNC5 (const char *macro)
{
  size_t len = FUNC4 (macro);
  char *buff = (char *) FUNC1 (len + 5);
  char *p = buff + 2;
  char *q = p + len;

  /* prepend __ (or maybe just _) if in user's namespace.  */
  FUNC3 (p, macro, len + 1);
  if (!( *p == '_' && (p[1] == '_' || FUNC0 (p[1]))))
    {
      if (*p != '_')
	*--p = '_';
      if (p[1] != '_')
	*--p = '_';
    }
  FUNC2 (parse_in, p);

  /* If it was in user's namespace...  */
  if (p != buff + 2)
    {
      /* Define the macro with leading and following __.  */
      if (q[-1] != '_')
	*q++ = '_';
      if (q[-2] != '_')
	*q++ = '_';
      *q = '\0';
      FUNC2 (parse_in, p);

      /* Finally, define the original macro if permitted.  */
      if (!flag_iso)
	FUNC2 (parse_in, macro);
    }
}