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
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  source_lineno ; 

__attribute__((used)) static int
FUNC2 (int c)
{
  for (;;)
    {
      if (c == ' ' || c == '\t')
	c = FUNC0 ();
      else if (c == '/')
	{
	  c = FUNC0 ();
	  if (c != '*')
	    {
	      (void) FUNC1 (c);
	      return '/';
	    }
	  c = FUNC0 ();
	  for (;;)
	    {
	      if (c == EOF)
		return EOF;
	      else if (c != '*')
		{
		  if (c == '\n')
		    source_lineno++, lineno++;
		  c = FUNC0 ();
		}
	      else if ((c = FUNC0 ()) == '/')
		return FUNC0 ();
	    }
	}
      else
	break;
    }
  return c;
}