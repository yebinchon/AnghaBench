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
struct in_device {int /*<<< orphan*/  mr_gq_timer; scalar_t__ mr_gq_running; int /*<<< orphan*/  mr_ifc_timer; scalar_t__ mr_ifc_count; struct ip_mc_list* mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IGMP_ALL_HOSTS ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_device*,int /*<<< orphan*/ ) ; 

void FUNC6(struct in_device *in_dev)
{
	struct ip_mc_list *i;

	FUNC0();

	for (i=in_dev->mc_list; i; i=i->next)
		FUNC3(i);

#ifdef CONFIG_IP_MULTICAST
	in_dev->mr_ifc_count = 0;
	if (del_timer(&in_dev->mr_ifc_timer))
		__in_dev_put(in_dev);
	in_dev->mr_gq_running = 0;
	if (del_timer(&in_dev->mr_gq_timer))
		__in_dev_put(in_dev);
	igmpv3_clear_delrec(in_dev);
#endif

	FUNC5(in_dev, IGMP_ALL_HOSTS);
}