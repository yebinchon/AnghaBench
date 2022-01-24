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
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  msg_received; int /*<<< orphan*/  last_msg; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;

/* Variables and functions */
 int MBX_OUT_FLG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*) ; 

void FUNC2(struct c67x00_device *dev, u16 int_status)
{
	if ((int_status & MBX_OUT_FLG) == 0)
		return;

	dev->hpi.lcp.last_msg = FUNC1(dev);
	FUNC0(&dev->hpi.lcp.msg_received);
}