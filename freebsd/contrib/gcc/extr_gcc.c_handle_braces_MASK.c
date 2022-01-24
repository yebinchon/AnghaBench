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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const) ; 
 int FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 char* FUNC5 (char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char const*,char const*,int) ; 

__attribute__((used)) static const char *
FUNC8 (const char *p)
{
  const char *atom, *end_atom;
  const char *d_atom = NULL, *d_end_atom = NULL;
  const char *orig = p;

  bool a_is_suffix;
  bool a_is_starred;
  bool a_is_negated;
  bool a_matched;

  bool a_must_be_last = false;
  bool ordered_set    = false;
  bool disjunct_set   = false;
  bool disj_matched   = false;
  bool disj_starred   = true;
  bool n_way_choice   = false;
  bool n_way_matched  = false;

#define SKIP_WHITE() do { while (*p == ' ' || *p == '\t') p++; } while (0)

  do
    {
      if (a_must_be_last)
	goto invalid;

      /* Scan one "atom" (S in the description above of %{}, possibly
	 with !, ., or * modifiers).  */
      a_matched = a_is_suffix = a_is_starred = a_is_negated = false;

      SKIP_WHITE();
      if (*p == '!')
	p++, a_is_negated = true;

      SKIP_WHITE();
      if (*p == '.')
	p++, a_is_suffix = true;

      atom = p;
      while (FUNC0(*p) || *p == '-' || *p == '+' || *p == '='
	     || *p == ',' || *p == '.' || *p == '@')
	p++;
      end_atom = p;

      if (*p == '*')
	p++, a_is_starred = 1;

      SKIP_WHITE();
      switch (*p)
	{
	case '&': case '}':
	  /* Substitute the switch(es) indicated by the current atom.  */
	  ordered_set = true;
	  if (disjunct_set || n_way_choice || a_is_negated || a_is_suffix
	      || atom == end_atom)
	    goto invalid;

	  FUNC4 (atom, end_atom, a_is_starred);

	  if (*p == '}')
	    FUNC6 ();
	  break;

	case '|': case ':':
	  /* Substitute some text if the current atom appears as a switch
	     or suffix.  */
	  disjunct_set = true;
	  if (ordered_set)
	    goto invalid;

	  if (atom == end_atom)
	    {
	      if (!n_way_choice || disj_matched || *p == '|'
		  || a_is_negated || a_is_suffix || a_is_starred)
		goto invalid;

	      /* An empty term may appear as the last choice of an
		 N-way choice set; it means "otherwise".  */
	      a_must_be_last = true;
	      disj_matched = !n_way_matched;
	      disj_starred = false;
	    }
	  else
	    {
	       if (a_is_suffix && a_is_starred)
		 goto invalid;

	       if (!a_is_starred)
		 disj_starred = false;

	       /* Don't bother testing this atom if we already have a
                  match.  */
	       if (!disj_matched && !n_way_matched)
		 {
		   if (a_is_suffix)
		     a_matched = FUNC3 (atom, end_atom);
		   else
		     a_matched = FUNC7 (atom, end_atom, a_is_starred);

		   if (a_matched != a_is_negated)
		     {
		       disj_matched = true;
		       d_atom = atom;
		       d_end_atom = end_atom;
		     }
		 }
	    }

	  if (*p == ':')
	    {
	      /* Found the body, that is, the text to substitute if the
		 current disjunction matches.  */
	      p = FUNC5 (p + 1, d_atom, d_end_atom, disj_starred,
				      disj_matched && !n_way_matched);
	      if (p == 0)
		return 0;

	      /* If we have an N-way choice, reset state for the next
		 disjunction.  */
	      if (*p == ';')
		{
		  n_way_choice = true;
		  n_way_matched |= disj_matched;
		  disj_matched = false;
		  disj_starred = true;
		  d_atom = d_end_atom = NULL;
		}
	    }
	  break;

	default:
	  goto invalid;
	}
    }
  while (*p++ != '}');

  return p;

 invalid:
  FUNC2 ("braced spec '%s' is invalid at '%c'", orig, *p);

#undef SKIP_WHITE
}