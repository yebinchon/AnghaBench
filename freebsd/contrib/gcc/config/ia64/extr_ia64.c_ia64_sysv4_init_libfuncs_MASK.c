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
 int /*<<< orphan*/  TFmode ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ();

  /* These functions are not part of the HPUX TFmode interface.  We
     use them instead of _U_Qfcmp, which doesn't work the way we
     expect.  */
  FUNC1 (eq_optab, TFmode, "_U_Qfeq");
  FUNC1 (ne_optab, TFmode, "_U_Qfne");
  FUNC1 (gt_optab, TFmode, "_U_Qfgt");
  FUNC1 (ge_optab, TFmode, "_U_Qfge");
  FUNC1 (lt_optab, TFmode, "_U_Qflt");
  FUNC1 (le_optab, TFmode, "_U_Qfle");

  /* We leave out _U_Qfmin, _U_Qfmax and _U_Qfabs since soft-fp in
     glibc doesn't have them.  */
}