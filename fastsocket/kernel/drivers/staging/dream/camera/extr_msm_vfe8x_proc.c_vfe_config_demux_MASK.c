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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {scalar_t__ vfebase; } ;

/* Variables and functions */
 scalar_t__ VFE_DEMUX_CFG ; 
 scalar_t__ VFE_DEMUX_EVEN_CFG ; 
 scalar_t__ VFE_DEMUX_ODD_CFG ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(uint32_t period, uint32_t even, uint32_t odd)
{
	FUNC0(period, ctrl->vfebase + VFE_DEMUX_CFG);
	FUNC0(even, ctrl->vfebase + VFE_DEMUX_EVEN_CFG);
	FUNC0(odd, ctrl->vfebase + VFE_DEMUX_ODD_CFG);
}