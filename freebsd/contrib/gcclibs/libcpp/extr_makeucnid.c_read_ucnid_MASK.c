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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int C99 ; 
 unsigned int CXX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 unsigned int* flags ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 unsigned long FUNC8 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC9 (const char *fname)
{
  FILE *f = FUNC4 (fname, "r");
  unsigned fl = 0;
  
  if (!f)
    FUNC0 ("opening ucnid.tab");
  for (;;)
    {
      char line[256];

      if (!FUNC3 (line, sizeof (line), f))
	break;
      if (FUNC7 (line, "[C99]\n") == 0)
	fl = C99;
      else if (FUNC7 (line, "[CXX]\n") == 0)
	fl = CXX;
      else if (FUNC6 (line[0]))
	{
	  char *l = line;
	  while (*l)
	    {
	      unsigned long start, end;
	      char *endptr;
	      start = FUNC8 (l, &endptr, 16);
	      if (endptr == l || (*endptr != '-' && ! FUNC5 (*endptr)))
		FUNC0 ("parsing ucnid.tab [1]");
	      l = endptr;
	      if (*l != '-')
		end = start;
	      else
		{
		  end = FUNC8 (l + 1, &endptr, 16);
		  if (end < start)
		    FUNC0 ("parsing ucnid.tab, end before start");
		  l = endptr;
		  if (! FUNC5 (*l))
		    FUNC0 ("parsing ucnid.tab, junk after range");
		}
	      while (FUNC5 (*l))
		l++;
	      if (end > 0xFFFF)
		FUNC0 ("parsing ucnid.tab, end too large");
	      while (start <= end)
		flags[start++] |= fl;
	    }
	}
    }
  if (FUNC2 (f))
    FUNC0 ("reading ucnid.tab");
  FUNC1 (f);
}