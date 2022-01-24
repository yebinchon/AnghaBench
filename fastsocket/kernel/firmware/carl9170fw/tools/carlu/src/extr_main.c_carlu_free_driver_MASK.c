#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct carlu {int /*<<< orphan*/ * tx_sent_queue; int /*<<< orphan*/  resp_pend; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  resp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int __AR9170_NUM_TXQ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct carlu*) ; 

void FUNC5(struct carlu *ar)
{
	unsigned int i;

	FUNC2("destroy driver struct.\n");
	FUNC1(ar->resp_lock);
	FUNC1(ar->mem_lock);
	FUNC0(ar->resp_pend);

	for (i = 0; i < __AR9170_NUM_TXQ; i++)
		FUNC3(&ar->tx_sent_queue[i]);

	FUNC4(ar);
}