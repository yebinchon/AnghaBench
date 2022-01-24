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
struct ip_mc_list {scalar_t__ multiaddr; scalar_t__ users; struct ip_mc_list* next; } ;
struct in_device {int /*<<< orphan*/  dead; int /*<<< orphan*/  mc_list_lock; int /*<<< orphan*/  mc_count; struct ip_mc_list* mc_list; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct in_device *in_dev, __be32 addr)
{
	struct ip_mc_list *i, **ip;

	FUNC0();

	for (ip=&in_dev->mc_list; (i=*ip)!=NULL; ip=&i->next) {
		if (i->multiaddr == addr) {
			if (--i->users == 0) {
				FUNC5(&in_dev->mc_list_lock);
				*ip = i->next;
				in_dev->mc_count--;
				FUNC6(&in_dev->mc_list_lock);
				FUNC1(i);
				FUNC3(i);

				if (!in_dev->dead)
					FUNC4(in_dev);

				FUNC2(i);
				return;
			}
			break;
		}
	}
}