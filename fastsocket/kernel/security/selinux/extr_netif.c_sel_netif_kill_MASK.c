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
struct sel_netif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sel_netif*) ; 
 struct sel_netif* FUNC3 (int) ; 
 int /*<<< orphan*/  sel_netif_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int ifindex)
{
	struct sel_netif *netif;

	FUNC0();
	FUNC4(&sel_netif_lock);
	netif = FUNC3(ifindex);
	if (netif)
		FUNC2(netif);
	FUNC5(&sel_netif_lock);
	FUNC1();
}