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
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** call_via; } ;

/* Variables and functions */
 int LR_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 () ; 
 scalar_t__ in_section ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ text_section ; 
 int thumb_call_reg_needed ; 
 int /*<<< orphan*/ ** thumb_call_via_label ; 

const char *
FUNC4 (rtx reg)
{
  int regno = FUNC0 (reg);
  rtx *labelp;

  FUNC1 (regno < LR_REGNUM);

  /* If we are in the normal text section we can use a single instance
     per compilation unit.  If we are doing function sections, then we need
     an entry per section, since we can't rely on reachability.  */
  if (in_section == text_section)
    {
      thumb_call_reg_needed = 1;

      if (thumb_call_via_label[regno] == NULL)
	thumb_call_via_label[regno] = FUNC2 ();
      labelp = thumb_call_via_label + regno;
    }
  else
    {
      if (cfun->machine->call_via[regno] == NULL)
	cfun->machine->call_via[regno] = FUNC2 ();
      labelp = cfun->machine->call_via + regno;
    }

  FUNC3 ("bl\t%a0", labelp);
  return "";
}