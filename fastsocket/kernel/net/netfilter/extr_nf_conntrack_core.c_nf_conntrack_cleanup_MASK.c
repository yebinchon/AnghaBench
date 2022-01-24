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

/* Variables and functions */
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  ip_ct_attach ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct net *net)
{
	if (FUNC0(net, &init_net))
		FUNC2(ip_ct_attach, NULL);

	/* This makes sure all current packets have passed through
	   netfilter framework.  Roll on, two-stage module
	   delete... */
	FUNC3();

	FUNC1(net);
}