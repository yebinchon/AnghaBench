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
struct rtnl_link {scalar_t__ calcit; scalar_t__ dumpit; scalar_t__ doit; } ;
typedef  scalar_t__ rtnl_dumpit_func ;
typedef  scalar_t__ rtnl_doit_func ;
typedef  scalar_t__ rtnl_calcit_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTM_NR_MSGTYPES ; 
 int RTNL_FAMILY_MAX ; 
 struct rtnl_link* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 struct rtnl_link** rtnl_msg_handlers ; 

int FUNC3(int protocol, int msgtype,
		    rtnl_doit_func doit, rtnl_dumpit_func dumpit,
		    rtnl_calcit_func calcit)
{
	struct rtnl_link *tab;
	int msgindex;

	FUNC0(protocol < 0 || protocol > RTNL_FAMILY_MAX);
	msgindex = FUNC2(msgtype);

	tab = rtnl_msg_handlers[protocol];
	if (tab == NULL) {
		tab = FUNC1(RTM_NR_MSGTYPES, sizeof(*tab), GFP_KERNEL);
		if (tab == NULL)
			return -ENOBUFS;

		rtnl_msg_handlers[protocol] = tab;
	}

	if (doit)
		tab[msgindex].doit = doit;

	if (dumpit)
		tab[msgindex].dumpit = dumpit;

	if (calcit)
		tab[msgindex].calcit = calcit;

	return 0;
}