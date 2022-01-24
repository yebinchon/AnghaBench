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
struct TYPE_2__ {scalar_t__ vfebase; } ;

/* Variables and functions */
 scalar_t__ VFE_CGC_OVERRIDE ; 
 scalar_t__ VFE_CLAMP_MAX_CFG ; 
 scalar_t__ VFE_CLAMP_MIN_CFG ; 
 scalar_t__ VFE_DEMUX_GAIN_0 ; 
 scalar_t__ VFE_DEMUX_GAIN_1 ; 
 scalar_t__ VFE_FRAMEDROP_ENC_CBCR_CFG ; 
 scalar_t__ VFE_FRAMEDROP_ENC_CBCR_PATTERN ; 
 scalar_t__ VFE_FRAMEDROP_ENC_Y_CFG ; 
 scalar_t__ VFE_FRAMEDROP_ENC_Y_PATTERN ; 
 scalar_t__ VFE_FRAMEDROP_VIEW_CBCR_CFG ; 
 scalar_t__ VFE_FRAMEDROP_VIEW_CBCR_PATTERN ; 
 scalar_t__ VFE_FRAMEDROP_VIEW_Y_CFG ; 
 scalar_t__ VFE_FRAMEDROP_VIEW_Y_PATTERN ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(0x800080, ctrl->vfebase + VFE_DEMUX_GAIN_0);
	FUNC0(0x800080, ctrl->vfebase + VFE_DEMUX_GAIN_1);
	FUNC0(0xFFFFF, ctrl->vfebase + VFE_CGC_OVERRIDE);

	/* default frame drop period and pattern */
	FUNC0(0x1f, ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_CFG);
	FUNC0(0x1f, ctrl->vfebase + VFE_FRAMEDROP_ENC_CBCR_CFG);
	FUNC0(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_PATTERN);
	FUNC0(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_ENC_CBCR_PATTERN);
	FUNC0(0x1f, ctrl->vfebase + VFE_FRAMEDROP_VIEW_Y_CFG);
	FUNC0(0x1f, ctrl->vfebase + VFE_FRAMEDROP_VIEW_CBCR_CFG);
	FUNC0(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_VIEW_Y_PATTERN);
	FUNC0(0xFFFFFFFF, ctrl->vfebase + VFE_FRAMEDROP_VIEW_CBCR_PATTERN);
	FUNC0(0, ctrl->vfebase + VFE_CLAMP_MIN_CFG);
	FUNC0(0xFFFFFF, ctrl->vfebase + VFE_CLAMP_MAX_CFG);
}