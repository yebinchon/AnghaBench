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
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/ * function; } ;
struct lapb_cb {TYPE_1__ t1timer; scalar_t__ t1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lapb_t1timer_expiry ; 

void FUNC2(struct lapb_cb *lapb)
{
	FUNC1(&lapb->t1timer);

	lapb->t1timer.data     = (unsigned long)lapb;
	lapb->t1timer.function = &lapb_t1timer_expiry;
	lapb->t1timer.expires  = jiffies + lapb->t1;

	FUNC0(&lapb->t1timer);
}