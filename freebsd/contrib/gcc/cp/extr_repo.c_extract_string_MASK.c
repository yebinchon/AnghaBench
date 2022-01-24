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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temporary_obstack ; 

__attribute__((used)) static char *
FUNC2 (char **pp)
{
  char *p = *pp;
  int backquote = 0;
  int inside = 0;

  for (;;)
    {
      char c = *p;
      if (c == '\0')
	break;
      ++p;
      if (backquote)
	{
	  FUNC0 (&temporary_obstack, c);
	  backquote = 0;
	}
      else if (! inside && c == ' ')
	break;
      else if (! inside && c == '\\')
	backquote = 1;
      else if (c == '\'')
	inside = !inside;
      else
	FUNC0 (&temporary_obstack, c);
    }

  FUNC0 (&temporary_obstack, '\0');
  *pp = p;
  return (char *) FUNC1 (&temporary_obstack);
}