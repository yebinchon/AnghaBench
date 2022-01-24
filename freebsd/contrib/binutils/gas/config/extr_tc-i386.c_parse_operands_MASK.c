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
struct TYPE_2__ {scalar_t__ operands; } ;

/* Variables and functions */
 char END_OF_INSN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MAX_OPERANDS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 TYPE_1__ i ; 
 unsigned int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ intel_syntax ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 scalar_t__ this_operand ; 

__attribute__((used)) static char *
FUNC10 (char *l, const char *mnemonic)
{
  char *token_start;

  /* 1 if operand is pending after ','.  */
  unsigned int expecting_operand = 0;

  /* Non-zero if operand parens not balanced.  */
  unsigned int paren_not_balanced;

  while (*l != END_OF_INSN)
    {
      /* Skip optional white space before operand.  */
      if (FUNC8 (*l))
	++l;
      if (!FUNC7 (*l) && *l != END_OF_INSN)
	{
	  FUNC3 (FUNC2("invalid character %s before operand %d"),
		  FUNC9 (*l),
		  i.operands + 1);
	  return NULL;
	}
      token_start = l;	/* after white space */
      paren_not_balanced = 0;
      while (paren_not_balanced || *l != ',')
	{
	  if (*l == END_OF_INSN)
	    {
	      if (paren_not_balanced)
		{
		  if (!intel_syntax)
		    FUNC3 (FUNC2("unbalanced parenthesis in operand %d."),
			    i.operands + 1);
		  else
		    FUNC3 (FUNC2("unbalanced brackets in operand %d."),
			    i.operands + 1);
		  return NULL;
		}
	      else
		break;	/* we are done */
	    }
	  else if (!FUNC7 (*l) && !FUNC8 (*l))
	    {
	      FUNC3 (FUNC2("invalid character %s in operand %d"),
		      FUNC9 (*l),
		      i.operands + 1);
	      return NULL;
	    }
	  if (!intel_syntax)
	    {
	      if (*l == '(')
		++paren_not_balanced;
	      if (*l == ')')
		--paren_not_balanced;
	    }
	  else
	    {
	      if (*l == '[')
		++paren_not_balanced;
	      if (*l == ']')
		--paren_not_balanced;
	    }
	  l++;
	}
      if (l != token_start)
	{			/* Yes, we've read in another operand.  */
	  unsigned int operand_ok;
	  this_operand = i.operands++;
	  if (i.operands > MAX_OPERANDS)
	    {
	      FUNC3 (FUNC2("spurious operands; (%d operands/instruction max)"),
		      MAX_OPERANDS);
	      return NULL;
	    }
	  /* Now parse operand adding info to 'i' as we go along.  */
	  FUNC0 (l);

	  if (intel_syntax)
	    operand_ok =
	      FUNC4 (token_start,
				  FUNC6 (mnemonic));
	  else
	    operand_ok = FUNC5 (token_start);

	  FUNC1 (l);
	  if (!operand_ok)
	    return NULL;
	}
      else
	{
	  if (expecting_operand)
	    {
	    expecting_operand_after_comma:
	      FUNC3 (FUNC2("expecting operand after ','; got nothing"));
	      return NULL;
	    }
	  if (*l == ',')
	    {
	      FUNC3 (FUNC2("expecting operand before ','; got nothing"));
	      return NULL;
	    }
	}

      /* Now *l must be either ',' or END_OF_INSN.  */
      if (*l == ',')
	{
	  if (*++l == END_OF_INSN)
	    {
	      /* Just skip it, if it's \n complain.  */
	      goto expecting_operand_after_comma;
	    }
	  expecting_operand = 1;
	}
    }
  return l;
}