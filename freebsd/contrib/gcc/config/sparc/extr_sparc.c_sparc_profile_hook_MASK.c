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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  LCT_NORMAL ; 
 int /*<<< orphan*/  MCOUNT_FUNCTION ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4 (int labelno)
{
  char buf[32];
  rtx lab, fun;

  FUNC0 (buf, "LP", labelno);
  lab = FUNC2 (Pmode, FUNC3 (buf));
  fun = FUNC2 (Pmode, MCOUNT_FUNCTION);

  FUNC1 (fun, LCT_NORMAL, VOIDmode, 1, lab, Pmode);
}