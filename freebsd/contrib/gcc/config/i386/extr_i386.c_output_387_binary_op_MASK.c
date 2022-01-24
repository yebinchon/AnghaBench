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
#define  DIV 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int MEM ; 
#define  MINUS 130 
 int /*<<< orphan*/  MODE_INT ; 
#define  MULT 129 
#define  PLUS 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SFmode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

const char *
FUNC13 (rtx insn, rtx *operands)
{
  static char buf[30];
  const char *p;
  const char *ssep;
  int is_sse = FUNC5 (operands[0]) || FUNC5 (operands[1]) || FUNC5 (operands[2]);

#ifdef ENABLE_CHECKING
  /* Even if we do not want to check the inputs, this documents input
     constraints.  Which helps in understanding the following code.  */
  if (STACK_REG_P (operands[0])
      && ((REG_P (operands[1])
	   && REGNO (operands[0]) == REGNO (operands[1])
	   && (STACK_REG_P (operands[2]) || GET_CODE (operands[2]) == MEM))
	  || (REG_P (operands[2])
	      && REGNO (operands[0]) == REGNO (operands[2])
	      && (STACK_REG_P (operands[1]) || GET_CODE (operands[1]) == MEM)))
      && (STACK_TOP_P (operands[1]) || STACK_TOP_P (operands[2])))
    ; /* ok */
  else
    gcc_assert (is_sse);
#endif

  switch (FUNC0 (operands[3]))
    {
    case PLUS:
      if (FUNC2 (FUNC1 (operands[1])) == MODE_INT
	  || FUNC2 (FUNC1 (operands[2])) == MODE_INT)
	p = "fiadd";
      else
	p = "fadd";
      ssep = "add";
      break;

    case MINUS:
      if (FUNC2 (FUNC1 (operands[1])) == MODE_INT
	  || FUNC2 (FUNC1 (operands[2])) == MODE_INT)
	p = "fisub";
      else
	p = "fsub";
      ssep = "sub";
      break;

    case MULT:
      if (FUNC2 (FUNC1 (operands[1])) == MODE_INT
	  || FUNC2 (FUNC1 (operands[2])) == MODE_INT)
	p = "fimul";
      else
	p = "fmul";
      ssep = "mul";
      break;

    case DIV:
      if (FUNC2 (FUNC1 (operands[1])) == MODE_INT
	  || FUNC2 (FUNC1 (operands[2])) == MODE_INT)
	p = "fidiv";
      else
	p = "fdiv";
      ssep = "div";
      break;

    default:
      FUNC10 ();
    }

  if (is_sse)
   {
      FUNC12 (buf, ssep);
      if (FUNC1 (operands[0]) == SFmode)
	FUNC11 (buf, "ss\t{%2, %0|%0, %2}");
      else
	FUNC11 (buf, "sd\t{%2, %0|%0, %2}");
      return buf;
   }
  FUNC12 (buf, p);

  switch (FUNC0 (operands[3]))
    {
    case MULT:
    case PLUS:
      if (FUNC4 (operands[2]) && FUNC3 (operands[0]) == FUNC3 (operands[2]))
	{
	  rtx temp = operands[2];
	  operands[2] = operands[1];
	  operands[1] = temp;
	}

      /* know operands[0] == operands[1].  */

      if (FUNC0 (operands[2]) == MEM)
	{
	  p = "%z2\t%2";
	  break;
	}

      if (FUNC8 (insn, REG_DEAD, FUNC3 (operands[2])))
	{
	  if (FUNC7 (operands[0]))
	    /* How is it that we are storing to a dead operand[2]?
	       Well, presumably operands[1] is dead too.  We can't
	       store the result to st(0) as st(0) gets popped on this
	       instruction.  Instead store to operands[2] (which I
	       think has to be st(1)).  st(1) will be popped later.
	       gcc <= 2.8.1 didn't have this check and generated
	       assembly code that the Unixware assembler rejected.  */
	    p = "p\t{%0, %2|%2, %0}";	/* st(1) = st(0) op st(1); pop */
	  else
	    p = "p\t{%2, %0|%0, %2}";	/* st(r1) = st(r1) op st(0); pop */
	  break;
	}

      if (FUNC7 (operands[0]))
	p = "\t{%y2, %0|%0, %y2}";	/* st(0) = st(0) op st(r2) */
      else
	p = "\t{%2, %0|%0, %2}";	/* st(r1) = st(r1) op st(0) */
      break;

    case MINUS:
    case DIV:
      if (FUNC0 (operands[1]) == MEM)
	{
	  p = "r%z1\t%1";
	  break;
	}

      if (FUNC0 (operands[2]) == MEM)
	{
	  p = "%z2\t%2";
	  break;
	}

      if (FUNC8 (insn, REG_DEAD, FUNC3 (operands[2])))
	{
#if SYSV386_COMPAT
	  /* The SystemV/386 SVR3.2 assembler, and probably all AT&T
	     derived assemblers, confusingly reverse the direction of
	     the operation for fsub{r} and fdiv{r} when the
	     destination register is not st(0).  The Intel assembler
	     doesn't have this brain damage.  Read !SYSV386_COMPAT to
	     figure out what the hardware really does.  */
	  if (STACK_TOP_P (operands[0]))
	    p = "{p\t%0, %2|rp\t%2, %0}";
	  else
	    p = "{rp\t%2, %0|p\t%0, %2}";
#else
	  if (FUNC7 (operands[0]))
	    /* As above for fmul/fadd, we can't store to st(0).  */
	    p = "rp\t{%0, %2|%2, %0}";	/* st(1) = st(0) op st(1); pop */
	  else
	    p = "p\t{%2, %0|%0, %2}";	/* st(r1) = st(r1) op st(0); pop */
#endif
	  break;
	}

      if (FUNC8 (insn, REG_DEAD, FUNC3 (operands[1])))
	{
#if SYSV386_COMPAT
	  if (STACK_TOP_P (operands[0]))
	    p = "{rp\t%0, %1|p\t%1, %0}";
	  else
	    p = "{p\t%1, %0|rp\t%0, %1}";
#else
	  if (FUNC7 (operands[0]))
	    p = "p\t{%0, %1|%1, %0}";	/* st(1) = st(1) op st(0); pop */
	  else
	    p = "rp\t{%1, %0|%0, %1}";	/* st(r2) = st(0) op st(r2); pop */
#endif
	  break;
	}

      if (FUNC7 (operands[0]))
	{
	  if (FUNC7 (operands[1]))
	    p = "\t{%y2, %0|%0, %y2}";	/* st(0) = st(0) op st(r2) */
	  else
	    p = "r\t{%y1, %0|%0, %y1}";	/* st(0) = st(r1) op st(0) */
	  break;
	}
      else if (FUNC7 (operands[1]))
	{
#if SYSV386_COMPAT
	  p = "{\t%1, %0|r\t%0, %1}";
#else
	  p = "r\t{%1, %0|%0, %1}";	/* st(r2) = st(0) op st(r2) */
#endif
	}
      else
	{
#if SYSV386_COMPAT
	  p = "{r\t%2, %0|\t%0, %2}";
#else
	  p = "\t{%2, %0|%0, %2}";	/* st(r1) = st(r1) op st(0) */
#endif
	}
      break;

    default:
      FUNC10 ();
    }

  FUNC11 (buf, p);
  return buf;
}