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
struct net {int dummy; } ;
struct ipip_net {int /*<<< orphan*/  fb_tunnel_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipip_net*) ; 
 int /*<<< orphan*/  ipip_net_id ; 
 int /*<<< orphan*/  FUNC1 (struct ipip_net*) ; 
 struct ipip_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net *net)
{
	struct ipip_net *ipn;

	ipn = FUNC2(net, ipip_net_id);
	FUNC3();
	FUNC0(ipn);
	FUNC5(ipn->fb_tunnel_dev);
	FUNC4();
	FUNC1(ipn);
}