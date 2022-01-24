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
typedef  int /*<<< orphan*/ * rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {scalar_t__ built_landing_pads; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_EH_REGION ; 
 scalar_t__ RESX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arh_to_label ; 
 int /*<<< orphan*/  arh_to_landing_pad ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

rtx
FUNC8 (rtx insn)
{
  bool is_resx = false;
  rtx handlers = NULL;
  int region_number;

  if (FUNC2 (insn)
      && FUNC0 (FUNC3 (insn)) == RESX)
    {
      region_number = FUNC5 (FUNC3 (insn), 0);
      is_resx = true;
    }
  else
    {
      rtx note = FUNC6 (insn, REG_EH_REGION, NULL_RTX);
      if (!note || FUNC1 (FUNC4 (note, 0)) <= 0)
	return NULL;
      region_number = FUNC1 (FUNC4 (note, 0));
    }

  FUNC7 (region_number, is_resx,
			     (cfun->eh->built_landing_pads
			      ? arh_to_landing_pad
			      : arh_to_label),
			     &handlers);

  return handlers;
}