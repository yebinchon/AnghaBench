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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (char *s, FILE *f, int needs_quotes)
{
  char *cp;

  for (cp = s; *cp; cp++)
    if (*cp == '\''
	|| *cp == '"'
	|| *cp == '\\'
	|| FUNC0 (*cp)
	|| *cp == ','
	|| *cp == ';')
      needs_quotes = 1;

  if (needs_quotes)
    {
      FUNC2 ('"', f);

      while (*s)
	{
	  if (*s == '"' || *s == '\\')
	    FUNC2 ('\\', f);

	  FUNC2 (*s, f);
	  s++;
	}

      FUNC2 ('"', f);
    }
  else
    FUNC1 (s, f);
}