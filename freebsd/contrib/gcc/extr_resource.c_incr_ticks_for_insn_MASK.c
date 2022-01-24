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
 int /*<<< orphan*/  MAX_DELAY_SLOT_LIVE_SEARCH ; 
 int /*<<< orphan*/ * bb_ticks ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1 (rtx insn)
{
  int b = FUNC0 (insn, MAX_DELAY_SLOT_LIVE_SEARCH);

  if (b != -1)
    bb_ticks[b]++;
}