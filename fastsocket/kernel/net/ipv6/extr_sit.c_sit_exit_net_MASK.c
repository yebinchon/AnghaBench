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
struct sit_net {int /*<<< orphan*/  fb_tunnel_dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sit_net*) ; 
 struct sit_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sit_net*) ; 
 int /*<<< orphan*/  sit_net_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net *net)
{
	struct sit_net *sitn;

	sitn = FUNC1(net, sit_net_id);
	FUNC2();
	FUNC4(sitn);
	FUNC5(sitn->fb_tunnel_dev);
	FUNC3();
	FUNC0(sitn);
}