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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4 (char **buf, const char *filename,
			 const char *section_desc)
{
  const char *q, *after_last_slash, *last_period = 0;
  char *p;
  int len;

  after_last_slash = filename;
  for (q = filename; *q; q++)
    {
      if (*q == '/')
	after_last_slash = q + 1;
      else if (*q == '.')
	last_period = q;
    }

  len = FUNC2 (after_last_slash) + FUNC2 (section_desc) + 2;
  *buf = (char *) FUNC3 (len);

  p = *buf;
  *p++ = '_';

  for (q = after_last_slash; *q; q++)
    {
      if (q == last_period)
	{
	  FUNC1 (p, section_desc);
	  p += FUNC2 (section_desc);
	  break;
	}

      else if (FUNC0 (*q))
	*p++ = *q;
    }

  if (last_period == 0)
    FUNC1 (p, section_desc);
  else
    *p = '\0';
}