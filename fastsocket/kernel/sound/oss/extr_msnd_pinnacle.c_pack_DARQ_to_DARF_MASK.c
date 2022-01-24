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
typedef  int WORD ;
struct TYPE_2__ {scalar_t__ io; scalar_t__ base; int /*<<< orphan*/  DARF; scalar_t__ DARQ; } ;
typedef  scalar_t__ LPDAQD ;

/* Variables and functions */
 int DAQDS__size ; 
 scalar_t__ DAQDS_wSize ; 
 scalar_t__ DARQ_DATA_BUFF ; 
 int DAR_BUFF_SIZE ; 
 int /*<<< orphan*/  HPBLKSEL_0 ; 
 int /*<<< orphan*/  HPBLKSEL_1 ; 
 scalar_t__ HP_BLKS ; 
 scalar_t__ JQS_wHead ; 
 scalar_t__ JQS_wSize ; 
 scalar_t__ JQS_wTail ; 
 int FUNC0 (int) ; 
 TYPE_1__ dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static __inline__ int FUNC6(register int bank)
{
	register int size, timeout = 3;
	register WORD wTmp;
	LPDAQD DAQD;

	/* Increment the tail and check for queue wrap */
	wTmp = FUNC3(dev.DARQ + JQS_wTail) + FUNC0(DAQDS__size);
	if (wTmp > FUNC3(dev.DARQ + JQS_wSize))
		wTmp = 0;
	while (wTmp == FUNC3(dev.DARQ + JQS_wHead) && timeout--)
		FUNC4(1);
	FUNC5(wTmp, dev.DARQ + JQS_wTail);

	/* Get our digital audio queue struct */
	DAQD = bank * DAQDS__size + dev.base + DARQ_DATA_BUFF;

	/* Get length of data */
	size = FUNC3(DAQD + DAQDS_wSize);

	/* Read data from the head (unprotected bank 1 access okay
           since this is only called inside an interrupt) */
	FUNC2(HPBLKSEL_1, dev.io + HP_BLKS);
	FUNC1(
		&dev.DARF,
		dev.base + bank * DAR_BUFF_SIZE,
		size);
	FUNC2(HPBLKSEL_0, dev.io + HP_BLKS);

	return 1;
}