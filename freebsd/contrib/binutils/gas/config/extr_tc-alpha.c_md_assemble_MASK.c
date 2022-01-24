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
typedef  int /*<<< orphan*/  opname ;
typedef  int /*<<< orphan*/  expressionS ;

/* Variables and functions */
 int MAX_INSN_ARGS ; 
 int TOKENIZE_ERROR_REPORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  alpha_macros_on ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 size_t FUNC4 (char*,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC6 (char *str)
{
  /* Current maximum is 13.  */
  char opname[32];
  expressionS tok[MAX_INSN_ARGS];
  int ntok, trunclen;
  size_t opnamelen;

  /* Split off the opcode.  */
  opnamelen = FUNC4 (str, "abcdefghijklmnopqrstuvwxyz_/46819");
  trunclen = (opnamelen < sizeof (opname) - 1
	      ? opnamelen
	      : sizeof (opname) - 1);
  FUNC3 (opname, str, trunclen);
  opname[trunclen] = '\0';

  /* Tokenize the rest of the line.  */
  if ((ntok = FUNC5 (str + opnamelen, tok, MAX_INSN_ARGS)) < 0)
    {
      if (ntok != TOKENIZE_ERROR_REPORT)
	FUNC1 (FUNC0("syntax error"));

      return;
    }

  /* Finish it off.  */
  FUNC2 (opname, tok, ntok, alpha_macros_on);
}