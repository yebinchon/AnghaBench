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

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  COND 130 
#define  CONST_STRING 129 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EQ ; 
 int EQ_ATTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOR ; 
 int const NOT ; 
#define  SYMBOL_REF 128 
 char FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ address_used ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  false_rtx ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  true_rtx ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC19 (rtx exp, rtx value, int insn_code, int insn_index)
{
  rtx orexp, andexp;
  rtx right;
  rtx newexp;
  int i;

  switch (FUNC2 (value))
    {
    case CONST_STRING:
      if (! FUNC15 (FUNC5 (value, 0), FUNC5 (exp, 1)))
	newexp = true_rtx;
      else
	newexp = false_rtx;
      break;
      
    case SYMBOL_REF:
      {
	char *p;
	char string[256];
	
	FUNC10 (FUNC2 (exp) == EQ_ATTR);
	FUNC10 (FUNC17 (FUNC5 (exp, 0)) + FUNC17 (FUNC5 (exp, 1)) + 2
		    <= 256);
	
	FUNC16 (string, FUNC5 (exp, 0));
	FUNC14 (string, "_");
	FUNC14 (string, FUNC5 (exp, 1));
	for (p = string; *p; p++)
	  *p = FUNC3 (*p);
	
	newexp = FUNC8 (EQ, value,
			   FUNC8 (SYMBOL_REF,
				     FUNC1 (string)));
	break;
      }

    case COND:
      /* We construct an IOR of all the cases for which the
	 requested attribute value is present.  Since we start with
	 FALSE, if it is not present, FALSE will be returned.
	  
	 Each case is the AND of the NOT's of the previous conditions with the
	 current condition; in the default case the current condition is TRUE.
	  
	 For each possible COND value, call ourselves recursively.
	  
	 The extra TRUE and FALSE expressions will be eliminated by another
	 call to the simplification routine.  */

      orexp = false_rtx;
      andexp = true_rtx;

      for (i = 0; i < FUNC7 (value, 0); i += 2)
	{
	  rtx this = FUNC13 (FUNC6 (value, 0, i),
						insn_code, insn_index);

	  right = FUNC12 (AND, andexp, this,
				     insn_code, insn_index);
	  right = FUNC12 (AND, right,
				     FUNC19 (exp,
						       FUNC6 (value, 0,
								i + 1),
						       insn_code, insn_index),
				     insn_code, insn_index);
	  orexp = FUNC12 (IOR, orexp, right,
				     insn_code, insn_index);

	  /* Add this condition into the AND expression.  */
	  newexp = FUNC8 (NOT, this);
	  andexp = FUNC12 (AND, andexp, newexp,
				      insn_code, insn_index);
	}

      /* Handle the default case.  */
      right = FUNC12 (AND, andexp,
				 FUNC19 (exp, FUNC4 (value, 1),
						   insn_code, insn_index),
				 insn_code, insn_index);
      newexp = FUNC12 (IOR, orexp, right, insn_code, insn_index);
      break;

    default:
      FUNC11 ();
    }

  /* If uses an address, must return original expression.  But set the
     ATTR_IND_SIMPLIFIED_P bit so we don't try to simplify it again.  */

  address_used = 0;
  FUNC18 (newexp);

  if (address_used)
    {
      if (! FUNC0 (exp))
	return FUNC9 (exp);
      return exp;
    }
  else
    return newexp;
}