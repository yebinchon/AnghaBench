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
struct rtnexthop {scalar_t__ rtnh_len; } ;
struct rtattr {int dummy; } ;

/* Variables and functions */
 struct rtnexthop* FUNC0 (struct rtattr*) ; 
 int FUNC1 (struct rtattr*) ; 
 struct rtnexthop* FUNC2 (struct rtnexthop*) ; 

__attribute__((used)) static int FUNC3(struct rtattr *rta)
{
	int nhs = 0;
	struct rtnexthop *nhp = FUNC0(rta);
	int nhlen = FUNC1(rta);

	while(nhlen >= (int)sizeof(struct rtnexthop)) {
		if ((nhlen -= nhp->rtnh_len) < 0)
			return 0;
		nhs++;
		nhp = FUNC2(nhp);
	}

	return nhs;
}