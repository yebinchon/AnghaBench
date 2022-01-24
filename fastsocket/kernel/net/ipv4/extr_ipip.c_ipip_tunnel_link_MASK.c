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
struct ipip_net {int dummy; } ;
struct ip_tunnel {struct ip_tunnel* next; } ;

/* Variables and functions */
 struct ip_tunnel** FUNC0 (struct ipip_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  ipip_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ipip_net *ipn, struct ip_tunnel *t)
{
	struct ip_tunnel **tp = FUNC0(ipn, t);

	t->next = *tp;
	FUNC1(&ipip_lock);
	*tp = t;
	FUNC2(&ipip_lock);
}