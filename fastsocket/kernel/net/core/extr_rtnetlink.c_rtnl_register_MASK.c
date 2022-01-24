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
typedef  int /*<<< orphan*/  rtnl_dumpit_func ;
typedef  int /*<<< orphan*/  rtnl_doit_func ;
typedef  int /*<<< orphan*/  rtnl_calcit_func ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(int protocol, int msgtype,
		   rtnl_doit_func doit, rtnl_dumpit_func dumpit,
		   rtnl_calcit_func calcit)
{
	if (FUNC0(protocol, msgtype, doit, dumpit, calcit) < 0)
		FUNC1("Unable to register rtnetlink message handler, "
		      "protocol = %d, message type = %d\n",
		      protocol, msgtype);
}