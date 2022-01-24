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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int /*<<< orphan*/  last_set_nonzero_bits; scalar_t__ last_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 TYPE_1__* reg_stat ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12 (rtx insn, rtx subreg)
{
  rtx links, set;
  unsigned int regno = FUNC4 (FUNC9 (subreg));
  enum machine_mode mode = FUNC0 (subreg);

  if (FUNC1 (mode) > HOST_BITS_PER_WIDE_INT)
    return;

  for (links = FUNC3 (insn); links;)
    {
      insn = FUNC10 (links, 0);
      set = FUNC11 (insn);

      if (! set || !FUNC5 (FUNC6 (set))
	  || FUNC4 (FUNC6 (set)) != regno
	  || FUNC0 (FUNC6 (set)) != FUNC0 (FUNC9 (subreg)))
	{
	  links = FUNC10 (links, 1);
	  continue;
	}

      if (reg_stat[regno].last_set == insn)
	{
	  if (FUNC8 (subreg) > 0)
	    reg_stat[regno].last_set_nonzero_bits &= FUNC2 (mode);
	}

      if (FUNC5 (FUNC7 (set)))
	{
	  regno = FUNC4 (FUNC7 (set));
	  links = FUNC3 (insn);
	}
      else
	break;
    }
}