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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_rtx_lineno ; 

int
FUNC2 (FILE *infile)
{
  int c;

  while (1)
    {
      c = FUNC1 (infile);
      switch (c)
	{
	case '\n':
	  read_rtx_lineno++;
	  break;

	case ' ': case '\t': case '\f': case '\r':
	  break;

	case ';':
	  do
	    c = FUNC1 (infile);
	  while (c != '\n' && c != EOF);
	  read_rtx_lineno++;
	  break;

	case '/':
	  {
	    int prevc;
	    c = FUNC1 (infile);
	    if (c != '*')
	      FUNC0 (infile, '*', c);

	    prevc = 0;
	    while ((c = FUNC1 (infile)) && c != EOF)
	      {
		if (c == '\n')
		   read_rtx_lineno++;
	        else if (prevc == '*' && c == '/')
		  break;
	        prevc = c;
	      }
	  }
	  break;

	default:
	  return c;
	}
    }
}