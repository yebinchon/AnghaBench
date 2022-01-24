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
struct pred_data {int /*<<< orphan*/ * codes; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  AND 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 char I ; 
#define  IF_THEN_ELSE 133 
#define  IOR 132 
#define  MATCH_CODE 131 
#define  MATCH_OPERAND 130 
#define  MATCH_TEST 129 
 char N ; 
#define  NOT 128 
 int NUM_RTX_CODE ; 
 char FUNC2 (char,char) ; 
 char FUNC3 (char) ; 
 char FUNC4 (char,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 char Y ; 
 int* did_you_mean_codes ; 
 int /*<<< orphan*/  error_count ; 
 struct pred_data* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  pattern_lineno ; 
 char* FUNC10 (char const**) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,size_t) ; 

__attribute__((used)) static void
FUNC13 (rtx exp, char codes[NUM_RTX_CODE])
{
  char op0_codes[NUM_RTX_CODE];
  char op1_codes[NUM_RTX_CODE];
  char op2_codes[NUM_RTX_CODE];
  int i;

  switch (FUNC0 (exp))
    {
    case AND:
      FUNC13 (FUNC5 (exp, 0), op0_codes);
      FUNC13 (FUNC5 (exp, 1), op1_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
	codes[i] = FUNC2 (op0_codes[i], op1_codes[i]);
      break;

    case IOR:
      FUNC13 (FUNC5 (exp, 0), op0_codes);
      FUNC13 (FUNC5 (exp, 1), op1_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
	codes[i] = FUNC4 (op0_codes[i], op1_codes[i]);
      break;
    case NOT:
      FUNC13 (FUNC5 (exp, 0), op0_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
	codes[i] = FUNC3 (op0_codes[i]);
      break;

    case IF_THEN_ELSE:
      /* a ? b : c  accepts the same codes as (a & b) | (!a & c).  */ 
      FUNC13 (FUNC5 (exp, 0), op0_codes);
      FUNC13 (FUNC5 (exp, 1), op1_codes);
      FUNC13 (FUNC5 (exp, 2), op2_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
	codes[i] = FUNC4 (FUNC2 (op0_codes[i], op1_codes[i]),
				FUNC2 (FUNC3 (op0_codes[i]),
					      op2_codes[i]));
      break;

    case MATCH_CODE:
      /* MATCH_CODE allows a specified list of codes.  However, if it
	 does not apply to the top level of the expression, it does not
	 constrain the set of codes for the top level.  */
      if (FUNC6 (exp, 1)[0] != '\0')
	{
	  FUNC8 (codes, Y, NUM_RTX_CODE);
	  break;
	}

      FUNC8 (codes, N, NUM_RTX_CODE);
      {
	const char *next_code = FUNC6 (exp, 0);
	const char *code;

	if (*next_code == '\0')
	  {
	    FUNC9 (pattern_lineno, "empty match_code expression");
	    error_count++;
	    break;
	  }

	while ((code = FUNC10 (&next_code)) != 0)
	  {
	    size_t n = next_code - code;
	    int found_it = 0;
	    
	    for (i = 0; i < NUM_RTX_CODE; i++)
	      if (!FUNC12 (code, FUNC1 (i), n)
		  && FUNC1 (i)[n] == '\0')
		{
		  codes[i] = Y;
		  found_it = 1;
		  break;
		}
	    if (!found_it)
	      {
		FUNC9 (pattern_lineno, "match_code \"%.*s\" matches nothing",
				   (int) n, code);
		error_count ++;
		for (i = 0; i < NUM_RTX_CODE; i++)
		  if (!FUNC11 (code, FUNC1 (i), n)
		      && FUNC1 (i)[n] == '\0'
		      && !did_you_mean_codes[i])
		    {
		      did_you_mean_codes[i] = 1;
		      FUNC9 (pattern_lineno, "(did you mean \"%s\"?)", FUNC1 (i));
		    }
	      }

	  }
      }
      break;

    case MATCH_OPERAND:
      /* MATCH_OPERAND disallows the set of codes that the named predicate
	 disallows, and is indeterminate for the codes that it does allow.  */
      {
	struct pred_data *p = FUNC7 (FUNC6 (exp, 1));
	if (!p)
	  {
	    FUNC9 (pattern_lineno,
			       "reference to unknown predicate '%s'",
			       FUNC6 (exp, 1));
	    error_count++;
	    break;
	  }
	for (i = 0; i < NUM_RTX_CODE; i++)
	  codes[i] = p->codes[i] ? I : N;
      }
      break;


    case MATCH_TEST:
      /* (match_test WHATEVER) is completely indeterminate.  */
      FUNC8 (codes, I, NUM_RTX_CODE);
      break;

    default:
      FUNC9 (pattern_lineno,
	 "'%s' cannot be used in a define_predicate expression",
	 FUNC1 (FUNC0 (exp)));
      error_count++;
      FUNC8 (codes, I, NUM_RTX_CODE);
      break;
    }
}