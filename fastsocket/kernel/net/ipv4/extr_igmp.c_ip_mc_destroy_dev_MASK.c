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
struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {int /*<<< orphan*/  mc_list_lock; int /*<<< orphan*/  mc_count; struct ip_mc_list* mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct in_device *in_dev)
{
	struct ip_mc_list *i;

	FUNC0();

	/* Deactivate timers */
	FUNC3(in_dev);

	FUNC4(&in_dev->mc_list_lock);
	while ((i = in_dev->mc_list) != NULL) {
		in_dev->mc_list = i->next;
		in_dev->mc_count--;
		FUNC5(&in_dev->mc_list_lock);

		/* We've dropped the groups in ip_mc_down already */
		FUNC2(i);
		FUNC1(i);

		FUNC4(&in_dev->mc_list_lock);
	}
	FUNC5(&in_dev->mc_list_lock);
}