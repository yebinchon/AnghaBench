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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vfe_cmd_output_ack {int /*<<< orphan*/ * chromabufaddr; int /*<<< orphan*/ * ybufaddr; } ;
struct TYPE_3__ {scalar_t__ fragCount; int /*<<< orphan*/  ackPending; int /*<<< orphan*/ * nextFrameAddrBuf; } ;
struct TYPE_4__ {TYPE_1__ viewPath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* ctrl ; 

void FUNC0(struct vfe_cmd_output_ack *in)
{
	const uint32_t *psrc;
	uint32_t *pdest;
	uint8_t i;

	pdest = ctrl->viewPath.nextFrameAddrBuf;

	psrc = in->ybufaddr;
	for (i = 0; i < ctrl->viewPath.fragCount; i++)
		*pdest++ = *psrc++;

	psrc = in->chromabufaddr;
	for (i = 0; i < ctrl->viewPath.fragCount; i++)
		*pdest++ = *psrc++;

	ctrl->viewPath.ackPending = FALSE;
}