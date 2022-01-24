#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfe_cmd_stats_af_ack {int /*<<< orphan*/  nextAFOutputBufferAddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ackPending; int /*<<< orphan*/  nextFrameAddrBuf; } ;
struct TYPE_4__ {TYPE_1__ afStatsControl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* ctrl ; 

void FUNC0(struct vfe_cmd_stats_af_ack *in)
{
	ctrl->afStatsControl.nextFrameAddrBuf = in->nextAFOutputBufferAddr;
	ctrl->afStatsControl.ackPending = FALSE;
}