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
struct nlattr {int dummy; } ;
struct ip_vs_service_user_kern {int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  af; scalar_t__ fwmark; } ;
struct ip_vs_service {int dummy; } ;

/* Variables and functions */
 struct ip_vs_service* FUNC0 (int) ; 
 struct ip_vs_service* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ip_vs_service* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct ip_vs_service_user_kern*,struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ip_vs_service *FUNC4(struct nlattr *nla)
{
	struct ip_vs_service_user_kern usvc;
	int ret;

	ret = FUNC3(&usvc, nla, 0);
	if (ret)
		return FUNC0(ret);

	if (usvc.fwmark)
		return FUNC2(usvc.af, usvc.fwmark);
	else
		return FUNC1(usvc.af, usvc.protocol,
					   &usvc.addr, usvc.port);
}