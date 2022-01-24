#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ t3; int /*<<< orphan*/  t3timer; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(ax25_cb *ax25)
{
	if (ax25->t3 > 0)
		FUNC1(&ax25->t3timer, jiffies + ax25->t3);
	else
		FUNC0(&ax25->t3timer);
}