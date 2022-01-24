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
struct xilinxfb_drvdata {int flags; int /*<<< orphan*/  dcr_host; scalar_t__ regs; } ;

/* Variables and functions */
 int PLB_ACCESS_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct xilinxfb_drvdata *drvdata, u32 offset,
				u32 val)
{
	if (drvdata->flags & PLB_ACCESS_FLAG)
		FUNC1(drvdata->regs + (offset << 2), val);
	else
		FUNC0(drvdata->dcr_host, offset, val);

}