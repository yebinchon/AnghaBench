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
struct sit_net {int dummy; } ;
struct ip_tunnel {struct ip_tunnel* next; } ;

/* Variables and functions */
 struct ip_tunnel** FUNC0 (struct sit_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  ipip6_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sit_net *sitn, struct ip_tunnel *t)
{
	struct ip_tunnel **tp;

	for (tp = FUNC0(sitn, t); *tp; tp = &(*tp)->next) {
		if (t == *tp) {
			FUNC1(&ipip6_lock);
			*tp = t->next;
			FUNC2(&ipip6_lock);
			break;
		}
	}
}