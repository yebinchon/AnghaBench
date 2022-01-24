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
struct value {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int breakpoint_count ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (struct value*) ; 
 struct value* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (char **pp, int trailer)
{
  int retval = 0;	/* default */
  char *p = *pp;

  if (p == NULL)
    /* Empty line means refer to the last breakpoint.  */
    return breakpoint_count;
  else if (*p == '$')
    {
      /* Make a copy of the name, so we can null-terminate it
         to pass to lookup_internalvar().  */
      char *varname;
      char *start = ++p;
      struct value *val;

      while (FUNC4 (*p) || *p == '_')
	p++;
      varname = (char *) FUNC2 (p - start + 1);
      FUNC8 (varname, start, p - start);
      varname[p - start] = '\0';
      val = FUNC10 (FUNC6 (varname));
      if (FUNC0 (FUNC1 (val)) == TYPE_CODE_INT)
	retval = (int) FUNC9 (val);
      else
	{
	  FUNC7 ("Convenience variable must have integer value.\n");
	  retval = 0;
	}
    }
  else
    {
      if (*p == '-')
	++p;
      while (*p >= '0' && *p <= '9')
	++p;
      if (p == *pp)
	/* There is no number here.  (e.g. "cond a == b").  */
	{
	  /* Skip non-numeric token */
	  while (*p && !FUNC5((int) *p))
	    ++p;
	  /* Return zero, which caller must interpret as error. */
	  retval = 0;
	}
      else
	retval = FUNC3 (*pp);
    }
  if (!(FUNC5 (*p) || *p == '\0' || *p == trailer))
    {
      /* Trailing junk: return 0 and let caller print error msg. */
      while (!(FUNC5 (*p) || *p == '\0' || *p == trailer))
	++p;
      retval = 0;
    }
  while (FUNC5 (*p))
    p++;
  *pp = p;
  return retval;
}