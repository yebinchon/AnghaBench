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
struct sjlj_lp_info {int call_site_index; } ;
struct eh_region {size_t region_number; } ;
typedef  scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int /*<<< orphan*/  sjlj_fc; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EH_REGION ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct eh_region* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_non_call_exceptions ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sjlj_fc_call_site_ofs ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void
FUNC19 (struct sjlj_lp_info *lp_info)
{
  int last_call_site = -2;
  rtx insn, mem;

  for (insn = FUNC16 (); insn ; insn = FUNC5 (insn))
    {
      struct eh_region *region;
      int this_call_site;
      rtx note, before, p;

      /* Reset value tracking at extended basic block boundaries.  */
      if (FUNC4 (insn))
	last_call_site = -2;

      if (! FUNC2 (insn))
	continue;

      note = FUNC15 (insn, REG_EH_REGION, NULL_RTX);
      if (!note)
	{
	  /* Calls (and trapping insns) without notes are outside any
	     exception handling region in this function.  Mark them as
	     no action.  */
	  if (FUNC0 (insn)
	      || (flag_non_call_exceptions
		  && FUNC17 (FUNC6 (insn))))
	    this_call_site = -1;
	  else
	    continue;
	}
      else
	{
	  /* Calls that are known to not throw need not be marked.  */
	  if (FUNC3 (FUNC9 (note, 0)) <= 0)
	    continue;

	  region = FUNC8 (eh_region, cfun->eh->region_array, FUNC3 (FUNC9 (note, 0)));
	  this_call_site = lp_info[region->region_number].call_site_index;
	}

      if (this_call_site == last_call_site)
	continue;

      /* Don't separate a call from it's argument loads.  */
      before = insn;
      if (FUNC0 (insn))
	before = FUNC14 (insn, NULL_RTX);

      FUNC18 ();
      mem = FUNC10 (cfun->eh->sjlj_fc, FUNC7 (integer_type_node),
			    sjlj_fc_call_site_ofs);
      FUNC12 (mem, FUNC1 (this_call_site));
      p = FUNC16 ();
      FUNC13 ();

      FUNC11 (p, before);
      last_call_site = this_call_site;
    }
}