#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int has_gp_insn_p; } ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GOT_UNSET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_2__* cfun ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (void)
{
  /* Don't bother rechecking if we found one last time.  */
  if (!cfun->machine->has_gp_insn_p)
    {
      rtx insn;

      FUNC7 ();
      for (insn = FUNC5 (); insn; insn = FUNC2 (insn))
	if (FUNC1 (insn)
	    && FUNC0 (FUNC3 (insn)) != USE
	    && FUNC0 (FUNC3 (insn)) != CLOBBER
	    && (FUNC4 (insn) != GOT_UNSET
		|| FUNC8 (FUNC3 (insn), VOIDmode)))
	  break;
      FUNC6 ();

      cfun->machine->has_gp_insn_p = (insn != 0);
    }
  return cfun->machine->has_gp_insn_p;
}