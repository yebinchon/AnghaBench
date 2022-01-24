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
struct pred_data {int /*<<< orphan*/  allows_non_const; int /*<<< orphan*/  special; int /*<<< orphan*/  allows_non_lvalue; } ;
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int RTX_CODE ;

/* Variables and functions */
 int const CALL ; 
 int const CC0 ; 
#define  CLOBBER 138 
 int const CONST_INT ; 
 int const DEFINE_EXPAND ; 
 int const DEFINE_INSN ; 
 int const DEFINE_PEEPHOLE2 ; 
 int const DEFINE_SPLIT ; 
 int const FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char const* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
#define  LABEL_REF 137 
#define  MATCH_DUP 136 
#define  MATCH_OPERAND 135 
#define  MATCH_OPERATOR 134 
#define  MATCH_OP_DUP 133 
#define  MATCH_PAR_DUP 132 
#define  MATCH_SCRATCH 131 
 int /*<<< orphan*/ * NULL_RTX ; 
 int const PC ; 
#define  SET 130 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
#define  STRICT_LOW_PART 129 
 int VOIDmode ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,size_t) ; 
#define  ZERO_EXTRACT 128 
 int /*<<< orphan*/  error_count ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct pred_data* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  pattern_lineno ; 
 char const** rtx_name ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC18 (char const*,char*) ; 

__attribute__((used)) static void
FUNC19 (rtx pattern, rtx insn, rtx set, int set_code)
{
  const char *fmt;
  RTX_CODE code;
  size_t i, len;
  int j;

  code = FUNC0 (pattern);
  switch (code)
    {
    case MATCH_SCRATCH:
      return;
    case MATCH_DUP:
    case MATCH_OP_DUP:
    case MATCH_PAR_DUP:
      if (FUNC13 (insn, FUNC8 (pattern, 0), pattern) == pattern)
	{
	  FUNC16 (pattern_lineno,
			     "operand %i duplicated before defined",
			     FUNC8 (pattern, 0));
          error_count++;
	}
      break;
    case MATCH_OPERAND:
    case MATCH_OPERATOR:
      {
	const char *pred_name = FUNC9 (pattern, 1);
	const struct pred_data *pred;
	const char *c_test;

	if (FUNC0 (insn) == DEFINE_INSN)
	  c_test = FUNC9 (insn, 2);
	else
	  c_test = FUNC9 (insn, 1);

	if (pred_name[0] != 0)
	  {
	    pred = FUNC15 (pred_name);
	    if (!pred)
	      FUNC16 (pattern_lineno,
				 "warning: unknown predicate '%s'",
				 pred_name);
	  }
	else
	  pred = 0;

	if (code == MATCH_OPERAND)
	  {
	    const char constraints0 = FUNC9 (pattern, 2)[0];

	    /* In DEFINE_EXPAND, DEFINE_SPLIT, and DEFINE_PEEPHOLE2, we
	       don't use the MATCH_OPERAND constraint, only the predicate.
	       This is confusing to folks doing new ports, so help them
	       not make the mistake.  */
	    if (FUNC0 (insn) == DEFINE_EXPAND
		|| FUNC0 (insn) == DEFINE_SPLIT
		|| FUNC0 (insn) == DEFINE_PEEPHOLE2)
	      {
		if (constraints0)
		  FUNC16 (pattern_lineno,
				     "warning: constraints not supported in %s",
				     rtx_name[FUNC0 (insn)]);
	      }

	    /* A MATCH_OPERAND that is a SET should have an output reload.  */
	    else if (set && constraints0)
	      {
		if (set_code == '+')
		  {
		    if (constraints0 == '+')
		      ;
		    /* If we've only got an output reload for this operand,
		       we'd better have a matching input operand.  */
		    else if (constraints0 == '='
			     && FUNC12 (insn, FUNC8 (pattern, 0)))
		      ;
		    else
		      {
			FUNC16 (pattern_lineno,
					   "operand %d missing in-out reload",
					   FUNC8 (pattern, 0));
			error_count++;
		      }
		  }
		else if (constraints0 != '=' && constraints0 != '+')
		  {
		    FUNC16 (pattern_lineno,
				       "operand %d missing output reload",
				       FUNC8 (pattern, 0));
		    error_count++;
		  }
	      }
	  }

	/* Allowing non-lvalues in destinations -- particularly CONST_INT --
	   while not likely to occur at runtime, results in less efficient
	   code from insn-recog.c.  */
	if (set && pred && pred->allows_non_lvalue)
	  FUNC16 (pattern_lineno,
			     "warning: destination operand %d "
			     "allows non-lvalue",
			     FUNC8 (pattern, 0));

	/* A modeless MATCH_OPERAND can be handy when we can check for
	   multiple modes in the c_test.  In most other cases, it is a
	   mistake.  Only DEFINE_INSN is eligible, since SPLIT and
	   PEEP2 can FAIL within the output pattern.  Exclude special
	   predicates, which check the mode themselves.  Also exclude
	   predicates that allow only constants.  Exclude the SET_DEST
	   of a call instruction, as that is a common idiom.  */

	if (FUNC1 (pattern) == VOIDmode
	    && code == MATCH_OPERAND
	    && FUNC0 (insn) == DEFINE_INSN
	    && pred
	    && !pred->special
	    && pred->allows_non_const
	    && FUNC18 (c_test, "operands") == NULL
	    && ! (set
		  && FUNC0 (set) == SET
		  && FUNC0 (FUNC6 (set)) == CALL))
	  FUNC16 (pattern_lineno,
			     "warning: operand %d missing mode?",
			     FUNC8 (pattern, 0));
	return;
      }

    case SET:
      {
	enum machine_mode dmode, smode;
	rtx dest, src;

	dest = FUNC5 (pattern);
	src = FUNC6 (pattern);

	/* STRICT_LOW_PART is a wrapper.  Its argument is the real
	   destination, and it's mode should match the source.  */
	if (FUNC0 (dest) == STRICT_LOW_PART)
	  dest = FUNC7 (dest, 0);

	/* Find the referent for a DUP.  */

	if (FUNC0 (dest) == MATCH_DUP
	    || FUNC0 (dest) == MATCH_OP_DUP
	    || FUNC0 (dest) == MATCH_PAR_DUP)
	  dest = FUNC13 (insn, FUNC8 (dest, 0), NULL);

	if (FUNC0 (src) == MATCH_DUP
	    || FUNC0 (src) == MATCH_OP_DUP
	    || FUNC0 (src) == MATCH_PAR_DUP)
	  src = FUNC13 (insn, FUNC8 (src, 0), NULL);

	dmode = FUNC1 (dest);
	smode = FUNC1 (src);

	/* The mode of an ADDRESS_OPERAND is the mode of the memory
	   reference, not the mode of the address.  */
	if (FUNC0 (src) == MATCH_OPERAND
	    && ! FUNC17 (FUNC9 (src, 1), "address_operand"))
	  ;

        /* The operands of a SET must have the same mode unless one
	   is VOIDmode.  */
        else if (dmode != VOIDmode && smode != VOIDmode && dmode != smode)
	  {
	    FUNC16 (pattern_lineno,
			       "mode mismatch in set: %smode vs %smode",
			       FUNC2 (dmode), FUNC2 (smode));
	    error_count++;
	  }

	/* If only one of the operands is VOIDmode, and PC or CC0 is
	   not involved, it's probably a mistake.  */
	else if (dmode != smode
		 && FUNC0 (dest) != PC
		 && FUNC0 (dest) != CC0
		 && FUNC0 (src) != PC
		 && FUNC0 (src) != CC0
		 && FUNC0 (src) != CONST_INT)
	  {
	    const char *which;
	    which = (dmode == VOIDmode ? "destination" : "source");
	    FUNC16 (pattern_lineno,
			       "warning: %s missing a mode?", which);
	  }

	if (dest != FUNC5 (pattern))
	  FUNC19 (dest, insn, pattern, '=');
	FUNC19 (FUNC5 (pattern), insn, pattern, '=');
        FUNC19 (FUNC6 (pattern), insn, NULL_RTX, 0);
        return;
      }

    case CLOBBER:
      FUNC19 (FUNC5 (pattern), insn, pattern, '=');
      return;

    case ZERO_EXTRACT:
      FUNC19 (FUNC7 (pattern, 0), insn, set, set ? '+' : 0);
      FUNC19 (FUNC7 (pattern, 1), insn, NULL_RTX, 0);
      FUNC19 (FUNC7 (pattern, 2), insn, NULL_RTX, 0);
      return;

    case STRICT_LOW_PART:
      FUNC19 (FUNC7 (pattern, 0), insn, set, set ? '+' : 0);
      return;

    case LABEL_REF:
      if (FUNC1 (FUNC7 (pattern, 0)) != VOIDmode)
	{
	  FUNC16 (pattern_lineno,
			     "operand to label_ref %smode not VOIDmode",
			     FUNC2 (FUNC1 (FUNC7 (pattern, 0))));
	  error_count++;
	}
      break;

    default:
      break;
    }

  fmt = FUNC3 (code);
  len = FUNC4 (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
	{
	case 'e': case 'u':
	  FUNC19 (FUNC7 (pattern, i), insn, NULL_RTX, 0);
	  break;

	case 'E':
	  for (j = 0; j < FUNC11 (pattern, i); j++)
	    FUNC19 (FUNC10 (pattern, i, j), insn, NULL_RTX, 0);
	  break;

	case 'i': case 'w': case '0': case 's':
	  break;

	default:
	  FUNC14 ();
	}
    }
}