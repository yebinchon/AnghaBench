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

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TFmode ; 
 int /*<<< orphan*/  abs_optab ; 
 int /*<<< orphan*/  cmptf_libfunc ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  smax_optab ; 
 int /*<<< orphan*/  smin_optab ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  udiv_optab ; 
 int /*<<< orphan*/  umod_optab ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC0 ();

  /* The HP SI millicode division and mod functions expect DI arguments.
     By turning them off completely we avoid using both libgcc and the
     non-standard millicode routines and use the HP DI millicode routines
     instead.  */

  FUNC2 (sdiv_optab, SImode, 0);
  FUNC2 (udiv_optab, SImode, 0);
  FUNC2 (smod_optab, SImode, 0);
  FUNC2 (umod_optab, SImode, 0);

  FUNC2 (sdiv_optab, DImode, "__milli_divI");
  FUNC2 (udiv_optab, DImode, "__milli_divU");
  FUNC2 (smod_optab, DImode, "__milli_remI");
  FUNC2 (umod_optab, DImode, "__milli_remU");

  /* HP-UX libc has TF min/max/abs routines in it.  */
  FUNC2 (smin_optab, TFmode, "_U_Qfmin");
  FUNC2 (smax_optab, TFmode, "_U_Qfmax");
  FUNC2 (abs_optab, TFmode, "_U_Qfabs");

  /* ia64_expand_compare uses this.  */
  cmptf_libfunc = FUNC1 ("_U_Qfcmp");

  /* These should never be used.  */
  FUNC2 (eq_optab, TFmode, 0);
  FUNC2 (ne_optab, TFmode, 0);
  FUNC2 (gt_optab, TFmode, 0);
  FUNC2 (ge_optab, TFmode, 0);
  FUNC2 (lt_optab, TFmode, 0);
  FUNC2 (le_optab, TFmode, 0);
}