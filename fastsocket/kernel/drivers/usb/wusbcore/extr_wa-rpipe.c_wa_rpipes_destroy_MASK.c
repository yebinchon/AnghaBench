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
struct wahc {int /*<<< orphan*/  rpipe_bm; int /*<<< orphan*/  rpipes; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct wahc *wa)
{
	struct device *dev = &wa->usb_iface->dev;

	if (!FUNC1(wa->rpipe_bm, wa->rpipes)) {
		char buf[256];
		FUNC0(1);
		FUNC2(buf, sizeof(buf), wa->rpipe_bm, wa->rpipes);
		FUNC3(dev, "BUG: pipes not released on exit: %s\n", buf);
	}
	FUNC4(wa->rpipe_bm);
}