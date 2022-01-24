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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {TYPE_1__* machine; } ;
struct TYPE_5__ {scalar_t__ total_size; scalar_t__ initialized; } ;
struct TYPE_4__ {TYPE_2__ frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ UNITS_PER_FPVALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* cfun ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ current_function_profile ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ mips16_hard_float ; 
 scalar_t__* regs_ever_live ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC7 (void)
{
  tree return_type;

  if (! reload_completed)
    return 0;

  if (regs_ever_live[31] || current_function_profile)
    return 0;

  return_type = FUNC1 (current_function_decl);

  /* In mips16 mode, a function which returns a floating point value
     needs to arrange to copy the return value into the floating point
     registers.  */
  if (TARGET_MIPS16
      && mips16_hard_float
      && ! FUNC4 (return_type, current_function_decl)
      && FUNC2 (FUNC0 (return_type)) == MODE_FLOAT
      && FUNC3 (FUNC0 (return_type)) <= UNITS_PER_FPVALUE)
    return 0;

  if (cfun->machine->frame.initialized)
    return cfun->machine->frame.total_size == 0;

  return FUNC5 (FUNC6 ()) == 0;
}