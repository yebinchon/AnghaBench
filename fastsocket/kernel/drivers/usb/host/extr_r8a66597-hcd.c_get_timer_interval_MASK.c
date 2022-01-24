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
struct urb {TYPE_1__* dev; int /*<<< orphan*/  pipe; } ;
typedef  int __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 scalar_t__ HSMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct urb *urb, __u8 interval)
{
	__u8 i;
	unsigned long time = 1;

	if (FUNC1(urb->pipe))
		return 0;

	if (FUNC0(urb->dev->speed) == HSMODE) {
		for (i = 0; i < (interval - 1); i++)
			time *= 2;
		time = time * 125 / 1000;	/* uSOF -> msec */
	} else {
		time = interval;
	}

	return time;
}