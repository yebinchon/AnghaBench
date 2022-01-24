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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (rtx insn, rtx x)
{
  if (FUNC0 (x) == SUBREG || FUNC3 (x))
    {
      if (FUNC0 (x) == SUBREG
	  && FUNC4 (x)
	  && FUNC3 (FUNC5 (x)))
	FUNC10 (insn, x);

      FUNC11 (x);
    }
  else
    {
      const char *format = FUNC1 (FUNC0 (x));
      int i, j;

      for (i = 0; i < FUNC2 (FUNC0 (x)); i++)
	switch (format[i])
	  {
	  case 'e':
	    FUNC12 (insn, FUNC6 (x, i));
	    break;
	  case 'V':
	  case 'E':
	    if (FUNC7 (x, i) != 0)
	      for (j = 0; j < FUNC9 (x, i); j++)
		FUNC12 (insn, FUNC8 (x, i, j));
	    break;
	  }
    }
}