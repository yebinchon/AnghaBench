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
typedef  int /*<<< orphan*/  rtx ;
typedef  int MAX_MACHINE_MODE ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  MODE_COMPLEX_FLOAT ; 
 int /*<<< orphan*/  MODE_DECIMAL_FLOAT ; 
 int /*<<< orphan*/  MODE_FLOAT ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  MODE_PARTIAL_INT ; 
 int /*<<< orphan*/  MODE_VECTOR_FLOAT ; 
 int /*<<< orphan*/  MODE_VECTOR_INT ; 
 int NUM_RTX_CODE ; 
 int /*<<< orphan*/  RTX_COMM_COMPARE ; 
 int /*<<< orphan*/  RTX_COMPARE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char const FUNC6 (char const) ; 
 char const FUNC7 (char const) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * mode_class ; 
 char** optabs ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char const) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13 (rtx insn)
{
  const char *name = FUNC8 (insn, 0);
  int m1 = 0, m2 = 0, op = 0;
  size_t pindex;
  int i;
  const char *np, *pp, *p, *q;

  /* Don't mention instructions whose names are the null string.
     They are in the machine description just to be recognized.  */
  if (*name == 0)
    return;

  /* See if NAME matches one of the patterns we have for the optabs we know
     about.  */

  for (pindex = 0; pindex < FUNC0 (optabs); pindex++)
    {
      int force_float = 0, force_int = 0, force_partial_int = 0;
      int force_consec = 0;
      int matches = 1;

      for (pp = optabs[pindex]; pp[0] != '$' || pp[1] != '('; pp++)
	;

      for (pp += 2, np = name; matches && ! (pp[0] == '$' && pp[1] == ')');
	   pp++)
	{
	  if (*pp != '$')
	    {
	      if (*pp != *np++)
		break;
	    }
	  else
	    switch (*++pp)
	      {
	      case 'N':
		force_consec = 1;
		break;
	      case 'I':
		force_int = 1;
		break;
	      case 'P':
                force_partial_int = 1;
                break;
	      case 'F':
		force_float = 1;
		break;
	      case 'V':
                break;
	      case 'c':
		for (op = 0; op < NUM_RTX_CODE; op++)
		  {
		    for (p = FUNC4(op), q = np; *p; p++, q++)
		      if (*p != *q)
			break;

		    /* We have to be concerned about matching "gt" and
		       missing "gtu", e.g., so verify we have reached the
		       end of thing we are to match.  */
		    if (*p == 0 && *q == 0
			&& (FUNC3 (op) == RTX_COMPARE
			    || FUNC3 (op) == RTX_COMM_COMPARE))
		      break;
		  }

		if (op == NUM_RTX_CODE)
		  matches = 0;
		else
		  np += FUNC12 (FUNC4(op));
		break;
	      case 'a':
	      case 'b':
		/* This loop will stop at the first prefix match, so
                   look through the modes in reverse order, in case
                   there are extra CC modes and CC is a prefix of the
                   CC modes (as it should be).  */
		for (i = (MAX_MACHINE_MODE) - 1; i >= 0; i--)
		  {
		    for (p = FUNC1(i), q = np; *p; p++, q++)
		      if (FUNC6 (*p) != *q)
			break;

		    if (*p == 0
			&& (! force_int || mode_class[i] == MODE_INT 
			    || mode_class[i] == MODE_VECTOR_INT)
		        && (! force_partial_int
                            || mode_class[i] == MODE_INT
                            || mode_class[i] == MODE_PARTIAL_INT
			    || mode_class[i] == MODE_VECTOR_INT)
			&& (! force_float
			    || mode_class[i] == MODE_FLOAT 
			    || mode_class[i] == MODE_DECIMAL_FLOAT
			    || mode_class[i] == MODE_COMPLEX_FLOAT
			    || mode_class[i] == MODE_VECTOR_FLOAT))
		      break;
		  }

		if (i < 0)
		  matches = 0;
		else if (*pp == 'a')
		  m1 = i, np += FUNC12 (FUNC1(i));
		else
		  m2 = i, np += FUNC12 (FUNC1(i));

		force_int = force_partial_int = force_float = 0;
		break;

	      default:
		FUNC9 ();
	      }
	}

      if (matches && pp[0] == '$' && pp[1] == ')'
	  && *np == 0
	  && (! force_consec || (int) FUNC2(m1) == m2))
	break;
    }

  if (pindex == FUNC0 (optabs))
    return;

  /* We found a match.  If this pattern is only conditionally present,
     write out the "if" and two extra blanks.  */

  if (*FUNC8 (insn, 2) != 0)
    FUNC10 ("  if (HAVE_%s)\n  ", name);

  FUNC10 ("  ");

  /* Now write out the initialization, making all required substitutions.  */
  for (pp = optabs[pindex]; *pp; pp++)
    {
      if (*pp != '$')
	FUNC11 (*pp);
      else
	switch (*++pp)
	  {
	  case '(':  case ')':
	  case 'I':  case 'F':  case 'N':
	    break;
	  case 'V':
	    if (FUNC5 (m1))
              FUNC10 ("v");
            break;
	  case 'a':
	    for (np = FUNC1(m1); *np; np++)
	      FUNC11 (FUNC6 (*np));
	    break;
	  case 'b':
	    for (np = FUNC1(m2); *np; np++)
	      FUNC11 (FUNC6 (*np));
	    break;
	  case 'A':
	    FUNC10 ("%smode", FUNC1(m1));
	    break;
	  case 'B':
	    FUNC10 ("%smode", FUNC1(m2));
	    break;
	  case 'c':
	    FUNC10 ("%s", FUNC4(op));
	    break;
	  case 'C':
	    for (np = FUNC4(op); *np; np++)
	      FUNC11 (FUNC7 (*np));
	    break;
	  }
    }

  FUNC10 (";\n");
}