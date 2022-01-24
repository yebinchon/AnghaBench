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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {unsigned int boundary; scalar_t__ where_pad; int /*<<< orphan*/  offset; int /*<<< orphan*/  slot_offset; } ;
struct assign_parm_data_one {scalar_t__ stack_parm; scalar_t__ entry_parm; TYPE_1__ locate; int /*<<< orphan*/  promoted_mode; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int BITS_PER_UNIT ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ current_function_internal_arg_pointer ; 
 scalar_t__ downward ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (tree parm, struct assign_parm_data_one *data)
{
  rtx offset_rtx, stack_parm;
  unsigned int align, boundary;

  /* If we're passing this arg using a reg, make its stack home the
     aligned stack slot.  */
  if (data->entry_parm)
    offset_rtx = FUNC0 (data->locate.slot_offset);
  else
    offset_rtx = FUNC0 (data->locate.offset);

  stack_parm = current_function_internal_arg_pointer;
  if (offset_rtx != const0_rtx)
    stack_parm = FUNC4 (Pmode, stack_parm, offset_rtx);
  stack_parm = FUNC3 (data->promoted_mode, stack_parm);

  FUNC6 (stack_parm, parm, 1);

  boundary = data->locate.boundary;
  align = BITS_PER_UNIT;

  /* If we're padding upward, we know that the alignment of the slot
     is FUNCTION_ARG_BOUNDARY.  If we're using slot_offset, we're
     intentionally forcing upward padding.  Otherwise we have to come
     up with a guess at the alignment based on OFFSET_RTX.  */
  if (data->locate.where_pad != downward || data->entry_parm)
    align = boundary;
  else if (FUNC1 (offset_rtx) == CONST_INT)
    {
      align = FUNC2 (offset_rtx) * BITS_PER_UNIT | boundary;
      align = align & -align;
    }
  FUNC5 (stack_parm, align);

  if (data->entry_parm)
    FUNC7 (data->entry_parm, stack_parm);

  data->stack_parm = stack_parm;
}