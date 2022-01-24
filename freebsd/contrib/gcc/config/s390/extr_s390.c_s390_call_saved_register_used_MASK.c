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
typedef  int tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  CUMULATIVE_ARGS ;

/* Variables and functions */
 scalar_t__ ERROR_MARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Pmode ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/ * call_used_regs ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC15 (tree argument_list)
{
  CUMULATIVE_ARGS cum;
  tree parameter;
  enum machine_mode mode;
  tree type;
  rtx parm_rtx;
  int reg;

  FUNC2 (cum, NULL, NULL, 0, 0);

  while (argument_list)
    {
      parameter = FUNC8 (argument_list);
      argument_list = FUNC5 (argument_list);

      FUNC11 (parameter);

      /* For an undeclared variable passed as parameter we will get
	 an ERROR_MARK node here.  */
      if (FUNC6 (parameter) == ERROR_MARK)
	return true;

      type = FUNC7 (parameter);
      FUNC11 (type);

      mode = FUNC9 (type);
      FUNC11 (mode);

      if (FUNC12 (&cum, mode, type, true))
 	{
 	  mode = Pmode;
 	  type = FUNC10 (type);
 	}

       parm_rtx = FUNC13 (&cum, mode, type, 0);

       FUNC14 (&cum, mode, type, 0);

       if (parm_rtx && FUNC4 (parm_rtx))
	 {
	   for (reg = 0;
		reg < FUNC1 (FUNC3 (parm_rtx), FUNC0 (parm_rtx));
		reg++)
	     if (! call_used_regs[reg + FUNC3 (parm_rtx)])
	       return true;
	 }
    }
  return false;
}