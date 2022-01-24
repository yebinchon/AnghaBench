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
struct au1xpsc_audio_dmadata {scalar_t__ q_period; scalar_t__ periods; int /*<<< orphan*/  dma_area_s; int /*<<< orphan*/  dma_area; scalar_t__ period_bytes; int /*<<< orphan*/  ddma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDMA_FLAGS_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct au1xpsc_audio_dmadata *cd)
{
	FUNC0(cd->ddma_chan,
				(void *)FUNC1(cd->dma_area),
				cd->period_bytes, DDMA_FLAGS_IE);

	/* update next-to-queue period */
	++cd->q_period;
	cd->dma_area += cd->period_bytes;
	if (cd->q_period >= cd->periods) {
		cd->q_period = 0;
		cd->dma_area = cd->dma_area_s;
	}
}