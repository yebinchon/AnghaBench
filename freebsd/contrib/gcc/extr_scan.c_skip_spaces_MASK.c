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
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  source_lineno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

int
FUNC2 (FILE *fp, int c)
{
  for (;;)
    {
      if (c == ' ' || c == '\t')
	c = FUNC0 (fp);
      else if (c == '/')
	{
	  c = FUNC0 (fp);
	  if (c != '*')
	    {
	      FUNC1 (c, fp);
	      return '/';
	    }
	  c = FUNC0 (fp);
	  for (;;)
	    {
	      if (c == EOF)
		return EOF;
	      else if (c != '*')
		{
		  if (c == '\n')
		    source_lineno++, lineno++;
		  c = FUNC0 (fp);
		}
	      else if ((c = FUNC0 (fp)) == '/')
		return FUNC0 (fp);
	    }
	}
      else
	break;
    }
  return c;
}