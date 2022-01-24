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
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int /*<<< orphan*/  hard_reg_full_preferences; int /*<<< orphan*/  hard_reg_preferences; int /*<<< orphan*/  hard_reg_copy_preferences; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 scalar_t__ REG_DEAD ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 TYPE_1__* allocno ; 
 scalar_t__ FUNC11 () ; 
 int* reg_allocno ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  rtx insn;
  rtx link;
  rtx set;

  /* We only try to handle the most common cases here.  Most of the cases
     where this wins are reg-reg copies.  */

  for (insn = FUNC11 (); insn; insn = FUNC3 (insn))
    if (FUNC1 (insn)
	&& (set = FUNC12 (insn)) != 0
	&& FUNC7 (FUNC8 (set))
	&& reg_allocno[FUNC4 (FUNC8 (set))] >= 0)
      for (link = FUNC5 (insn); link; link = FUNC10 (link, 1))
	if (FUNC6 (link) == REG_DEAD
	    && FUNC7 (FUNC10 (link, 0))
	    && reg_allocno[FUNC4 (FUNC10 (link, 0))] >= 0
	    && ! FUNC0 (reg_allocno[FUNC4 (FUNC8 (set))],
			    reg_allocno[FUNC4 (FUNC10 (link, 0))]))
	  {
	    int a1 = reg_allocno[FUNC4 (FUNC8 (set))];
	    int a2 = reg_allocno[FUNC4 (FUNC10 (link, 0))];

	    if (FUNC10 (link, 0) == FUNC9 (set))
	      {
		FUNC2 (allocno[a1].hard_reg_copy_preferences,
				  allocno[a2].hard_reg_copy_preferences);
		FUNC2 (allocno[a2].hard_reg_copy_preferences,
				  allocno[a1].hard_reg_copy_preferences);
	      }

	    FUNC2 (allocno[a1].hard_reg_preferences,
			      allocno[a2].hard_reg_preferences);
	    FUNC2 (allocno[a2].hard_reg_preferences,
			      allocno[a1].hard_reg_preferences);
	    FUNC2 (allocno[a1].hard_reg_full_preferences,
			      allocno[a2].hard_reg_full_preferences);
	    FUNC2 (allocno[a2].hard_reg_full_preferences,
			      allocno[a1].hard_reg_full_preferences);
	  }
}