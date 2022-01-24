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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MC1_ERPS1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_MC1 ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			   struct comedi_subdevice *s, unsigned int trignum)
{
	if (trignum != 0)
		return -EINVAL;

	FUNC0("s626_ai_inttrig: trigger adc start...");

	/*  Start executing the RPS program. */
	FUNC1(P_MC1, MC1_ERPS1);

	s->async->inttrig = NULL;

	FUNC0(" done\n");

	return 1;
}