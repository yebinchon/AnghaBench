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
typedef  int boolean ;
struct TYPE_3__ {int pingPongStatus; int /*<<< orphan*/  droppedStatsFrameCount; int /*<<< orphan*/  bufToRender; int /*<<< orphan*/  nextFrameAddrBuf; int /*<<< orphan*/  ackPending; } ;
struct TYPE_4__ {TYPE_1__ awbStatsControl; } ;

/* Variables and functions */
 TYPE_2__* ctrl ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	boolean bufferAvailable;

	if (!(ctrl->awbStatsControl.ackPending)) {

		ctrl->awbStatsControl.pingPongStatus =
			FUNC0();

		bufferAvailable = (ctrl->awbStatsControl.pingPongStatus) ^ 1;

		ctrl->awbStatsControl.bufToRender =
			FUNC1(bufferAvailable);

		FUNC3(bufferAvailable,
			ctrl->awbStatsControl.nextFrameAddrBuf);

		FUNC2(ctrl->awbStatsControl.bufToRender);

	} else
		ctrl->awbStatsControl.droppedStatsFrameCount++;
}