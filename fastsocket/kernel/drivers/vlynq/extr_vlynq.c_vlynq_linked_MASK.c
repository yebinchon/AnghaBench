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
struct vlynq_device {TYPE_1__* local; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int VLYNQ_STATUS_LINK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct vlynq_device *dev)
{
	int i;

	for (i = 0; i < 100; i++)
		if (FUNC1(&dev->local->status) & VLYNQ_STATUS_LINK)
			return 1;
		else
			FUNC0();

	return 0;
}