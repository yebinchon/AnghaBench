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
struct expression {int /*<<< orphan*/ * elts; } ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct expression*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct expression*,int,int*,int*) ; 

__attribute__((used)) static void
FUNC5 (struct expression *inexpr,
		  struct expression *outexpr, int inend, int outbeg)
{
  int oplen;
  int args;
  int i;
  int *arglens;
  enum exp_opcode opcode;

  FUNC4 (inexpr, inend, &oplen, &args);

  /* Copy the final operator itself, from the end of the input
     to the beginning of the output.  */
  inend -= oplen;
  FUNC3 (&outexpr->elts[outbeg], &inexpr->elts[inend],
	  FUNC0 (oplen));
  outbeg += oplen;

  /* Find the lengths of the arg subexpressions.  */
  arglens = (int *) FUNC1 (args * sizeof (int));
  for (i = args - 1; i >= 0; i--)
    {
      oplen = FUNC2 (inexpr, inend);
      arglens[i] = oplen;
      inend -= oplen;
    }

  /* Now copy each subexpression, preserving the order of
     the subexpressions, but prefixifying each one.
     In this loop, inend starts at the beginning of
     the expression this level is working on
     and marches forward over the arguments.
     outbeg does similarly in the output.  */
  for (i = 0; i < args; i++)
    {
      oplen = arglens[i];
      inend += oplen;
      FUNC5 (inexpr, outexpr, inend, outbeg);
      outbeg += oplen;
    }
}