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
struct TYPE_2__ {int last_recbank; int rec_sample_size; int rec_channels; int rec_sample_rate; scalar_t__ base; int /*<<< orphan*/  lock; scalar_t__ io; scalar_t__ DARQ; } ;
typedef  scalar_t__ LPDAQD ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int DAQDS__size ; 
 scalar_t__ DAQDS_wChannels ; 
 scalar_t__ DAQDS_wFlags ; 
 scalar_t__ DAQDS_wFormat ; 
 scalar_t__ DAQDS_wIntMsg ; 
 scalar_t__ DAQDS_wSampleRate ; 
 scalar_t__ DAQDS_wSampleSize ; 
 scalar_t__ DAQDS_wSize ; 
 scalar_t__ DAQDS_wStart ; 
 scalar_t__ DARQ_DATA_BUFF ; 
 int DAR_BUFF_SIZE ; 
 int HIMT_RECORD_DONE ; 
 int /*<<< orphan*/  HPBLKSEL_0 ; 
 int /*<<< orphan*/  HPBLKSEL_1 ; 
 scalar_t__ HP_BLKS ; 
 scalar_t__ JQS_wHead ; 
 scalar_t__ JQS_wTail ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 TYPE_1__ dev ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
	int n;
	LPDAQD lpDAQ;
	unsigned long flags;

	dev.last_recbank = 2;
	FUNC6(FUNC1(0 * DAQDS__size), dev.DARQ + JQS_wHead);
	FUNC6(FUNC1(dev.last_recbank * DAQDS__size), dev.DARQ + JQS_wTail);

	/* Critical section: bank 1 access */
	FUNC4(&dev.lock, flags);
	FUNC3(HPBLKSEL_1, dev.io + HP_BLKS);
	FUNC2(dev.base, 0, DAR_BUFF_SIZE * 3);
	FUNC3(HPBLKSEL_0, dev.io + HP_BLKS);
	FUNC5(&dev.lock, flags);

	for (n = 0, lpDAQ = dev.base + DARQ_DATA_BUFF; n < 3; ++n, lpDAQ += DAQDS__size) {
		FUNC6(FUNC0((DWORD)(DAR_BUFF_SIZE * n)) + 0x4000, lpDAQ + DAQDS_wStart);
		FUNC6(DAR_BUFF_SIZE, lpDAQ + DAQDS_wSize);
		FUNC6(1, lpDAQ + DAQDS_wFormat);
		FUNC6(dev.rec_sample_size, lpDAQ + DAQDS_wSampleSize);
		FUNC6(dev.rec_channels, lpDAQ + DAQDS_wChannels);
		FUNC6(dev.rec_sample_rate, lpDAQ + DAQDS_wSampleRate);
		FUNC6(HIMT_RECORD_DONE * 0x100 + n, lpDAQ + DAQDS_wIntMsg);
		FUNC6(n, lpDAQ + DAQDS_wFlags);
	}
}