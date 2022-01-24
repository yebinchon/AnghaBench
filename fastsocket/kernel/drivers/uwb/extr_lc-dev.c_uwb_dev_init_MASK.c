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
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct uwb_dev {int /*<<< orphan*/  streams; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  dev_addr; TYPE_1__ dev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_GLOBAL_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uwb_dev_sys_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct uwb_dev *uwb_dev)
{
	FUNC2(&uwb_dev->mutex);
	FUNC1(&uwb_dev->dev);
	uwb_dev->dev.release = uwb_dev_sys_release;
	FUNC3(&uwb_dev->dev_addr);
	FUNC4(&uwb_dev->mac_addr);
	FUNC0(uwb_dev->streams, UWB_NUM_GLOBAL_STREAMS);
}