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
struct gdbarch_tdep {size_t fp_model; } ;
struct cmd_list_element {int dummy; } ;
struct TYPE_2__ {scalar_t__ arch; } ;

/* Variables and functions */
 scalar_t__ ARM_FLOAT_AUTO ; 
 scalar_t__ arm_fp_model ; 
 scalar_t__ bfd_arch_arm ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/ * fp_model_strings ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty,
	       struct cmd_list_element *c)
{
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);

  if (arm_fp_model == ARM_FLOAT_AUTO 
      && FUNC0 (current_gdbarch)->arch == bfd_arch_arm)
    FUNC2 ("  - the default for the current ABI is \"%s\".\n",
		     fp_model_strings[tdep->fp_model]);
}