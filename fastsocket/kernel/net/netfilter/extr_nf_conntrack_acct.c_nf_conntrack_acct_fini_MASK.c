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
 int /*<<< orphan*/  acct_extend ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct net *net)
{
	FUNC1(net);
	if (FUNC0(net, &init_net))
		FUNC2(&acct_extend);
}