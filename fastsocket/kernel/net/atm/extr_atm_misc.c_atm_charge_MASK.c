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
struct atm_vcc {TYPE_1__* stats; } ;
struct TYPE_4__ {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_drop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (struct atm_vcc*) ; 

int FUNC5(struct atm_vcc *vcc,int truesize)
{
	FUNC0(vcc,truesize);
	if (FUNC3(&FUNC4(vcc)->sk_rmem_alloc) <= FUNC4(vcc)->sk_rcvbuf)
		return 1;
	FUNC1(vcc,truesize);
	FUNC2(&vcc->stats->rx_drop);
	return 0;
}