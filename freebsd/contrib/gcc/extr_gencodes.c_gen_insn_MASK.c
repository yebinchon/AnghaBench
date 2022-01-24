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
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3 (rtx insn, int code)
{
  const char *name = FUNC0 (insn, 0);
  int truth = FUNC1 (FUNC0 (insn, 2));

  /* Don't mention instructions whose names are the null string
     or begin with '*'.  They are in the machine description just
     to be recognized.  */
  if (name[0] != 0 && name[0] != '*')
    {
      if (truth == 0)
	FUNC2 ("#define CODE_FOR_%s CODE_FOR_nothing\n", name);
      else
	FUNC2 ("  CODE_FOR_%s = %d,\n", name, code);
    }
}