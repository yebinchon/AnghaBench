#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdbarch_tdep {int /*<<< orphan*/  fp_model; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FLOAT_SOFT_FPA ; 
 int /*<<< orphan*/  arm_netbsd_aout_in_solib_call_trampoline ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch_info,struct gdbarch*) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct gdbarch_info info, 
			  struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  FUNC0 (info, gdbarch);

  FUNC2
    (gdbarch, arm_netbsd_aout_in_solib_call_trampoline);
  tdep->fp_model = ARM_FLOAT_SOFT_FPA;
}