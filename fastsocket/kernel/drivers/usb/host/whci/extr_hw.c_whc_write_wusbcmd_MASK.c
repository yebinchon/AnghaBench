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
typedef  int u32 ;
struct whc {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WUSBCMD ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct whc *whc, u32 mask, u32 val)
{
	unsigned long flags;
	u32 cmd;

	FUNC2(&whc->lock, flags);

	cmd = FUNC0(whc->base + WUSBCMD);
	cmd = (cmd & ~mask) | val;
	FUNC1(cmd, whc->base + WUSBCMD);

	FUNC3(&whc->lock, flags);
}