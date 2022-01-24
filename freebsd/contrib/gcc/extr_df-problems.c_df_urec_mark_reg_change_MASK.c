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
struct df_urec_bb_info {int /*<<< orphan*/  gen; int /*<<< orphan*/  kill; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__** hard_regno_nregs ; 

__attribute__((used)) static void
FUNC7 (rtx reg, rtx setter, void *data)
{
  int regno;
  int endregno;
  int i;
  struct df_urec_bb_info *bb_info = (struct df_urec_bb_info*) data;

  if (FUNC0 (reg) == SUBREG)
    reg = FUNC4 (reg);

  if (!FUNC3 (reg))
    return;
  
  
  endregno = regno = FUNC2 (reg);
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      endregno +=hard_regno_nregs[regno][FUNC1 (reg)];
      
      for (i = regno; i < endregno; i++)
	{
	  FUNC6 (bb_info->kill, i);
	  
	  if (FUNC0 (setter) != CLOBBER)
	    FUNC6 (bb_info->gen, i);
	  else
	    FUNC5 (bb_info->gen, i);
	}
    }
  else
    {
      FUNC6 (bb_info->kill, regno);
      
      if (FUNC0 (setter) != CLOBBER)
	FUNC6 (bb_info->gen, regno);
      else
	FUNC5 (bb_info->gen, regno);
    }
}