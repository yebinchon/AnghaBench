#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * part1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int n_switches ; 
 char* FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/ * suffix_subst ; 
 TYPE_1__* switches ; 

__attribute__((used)) static const char *
FUNC6 (const char *p, const char *atom, const char *end_atom,
		    int starred, int matched)
{
  const char *body, *end_body;
  unsigned int nesting_level;
  bool have_subst     = false;

  /* Locate the closing } or ;, honoring nested braces.
     Trim trailing whitespace.  */
  body = p;
  nesting_level = 1;
  for (;;)
    {
      if (*p == '{')
	nesting_level++;
      else if (*p == '}')
	{
	  if (!--nesting_level)
	    break;
	}
      else if (*p == ';' && nesting_level == 1)
	break;
      else if (*p == '%' && p[1] == '*' && nesting_level == 1)
	have_subst = true;
      else if (*p == '\0')
	goto invalid;
      p++;
    }

  end_body = p;
  while (end_body[-1] == ' ' || end_body[-1] == '\t')
    end_body--;

  if (have_subst && !starred)
    goto invalid;

  if (matched)
    {
      /* Copy the substitution body to permanent storage and execute it.
	 If have_subst is false, this is a simple matter of running the
	 body through do_spec_1...  */
      char *string = FUNC4 (body, end_body - body);
      if (!have_subst)
	{
	  if (FUNC1 (string, 0, NULL) < 0)
	    return 0;
	}
      else
	{
	  /* ... but if have_subst is true, we have to process the
	     body once for each matching switch, with %* set to the
	     variant part of the switch.  */
	  unsigned int hard_match_len = end_atom - atom;
	  int i;

	  for (i = 0; i < n_switches; i++)
	    if (!FUNC5 (switches[i].part1, atom, hard_match_len)
		&& FUNC0 (i, hard_match_len))
	      {
		if (FUNC1 (string, 0,
			       &switches[i].part1[hard_match_len]) < 0)
		  return 0;
		/* Pass any arguments this switch has.  */
		FUNC3 (i, 1);
		suffix_subst = NULL;
	      }
	}
    }

  return p;

 invalid:
  FUNC2 ("braced spec body '%s' is invalid", body);
}