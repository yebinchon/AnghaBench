#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int constant; } ;
struct TYPE_4__ {int constant; } ;
struct TYPE_6__ {TYPE_2__ size; TYPE_1__ slot_offset; } ;
struct arg_data {TYPE_3__ locate; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  stored_args_map ; 

__attribute__((used)) static int
FUNC6 (rtx insn, struct arg_data *arg, int mark_stored_args_map)
{
  int low, high;

  if (insn == NULL_RTX)
    insn = FUNC5 ();
  else
    insn = FUNC1 (insn);

  for (; insn; insn = FUNC1 (insn))
    if (FUNC0 (insn)
	&& FUNC4 (FUNC2 (insn)))
      break;

  if (mark_stored_args_map)
    {
#ifdef ARGS_GROW_DOWNWARD
      low = -arg->locate.slot_offset.constant - arg->locate.size.constant;
#else
      low = arg->locate.slot_offset.constant;
#endif

      for (high = low + arg->locate.size.constant; low < high; low++)
	FUNC3 (stored_args_map, low);
    }
  return insn != NULL_RTX;
}