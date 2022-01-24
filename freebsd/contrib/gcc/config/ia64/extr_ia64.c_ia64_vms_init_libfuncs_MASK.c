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
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  udiv_optab ; 
 int /*<<< orphan*/  umod_optab ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 (sdiv_optab, SImode, "OTS$DIV_I");
  FUNC0 (sdiv_optab, DImode, "OTS$DIV_L");
  FUNC0 (udiv_optab, SImode, "OTS$DIV_UI");
  FUNC0 (udiv_optab, DImode, "OTS$DIV_UL");
  FUNC0 (smod_optab, SImode, "OTS$REM_I");
  FUNC0 (smod_optab, DImode, "OTS$REM_L");
  FUNC0 (umod_optab, SImode, "OTS$REM_UI");
  FUNC0 (umod_optab, DImode, "OTS$REM_UL");
}