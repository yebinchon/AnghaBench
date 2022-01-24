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
typedef  int /*<<< orphan*/  u32 ;
struct tc_action {struct tc_action* next; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tc_action*) ; 
 int FUNC1 (struct tc_action*) ; 
 int /*<<< orphan*/  RTM_NEWACTION ; 
 int /*<<< orphan*/  FUNC2 (struct tc_action*) ; 
 struct tc_action* FUNC3 (struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tc_action*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nlattr *nla, struct nlmsghdr *n, u32 pid, int ovr)
{
	int ret = 0;
	struct tc_action *act;
	struct tc_action *a;
	u32 seq = n->nlmsg_seq;

	act = FUNC3(nla, NULL, NULL, ovr, 0);
	if (act == NULL)
		goto done;
	if (FUNC0(act)) {
		ret = FUNC1(act);
		goto done;
	}

	/* dump then free all the actions after update; inserted policy
	 * stays intact
	 * */
	ret = FUNC4(act, pid, seq, RTM_NEWACTION, n->nlmsg_flags);
	for (a = act; a; a = act) {
		act = a->next;
		FUNC2(a);
	}
done:
	return ret;
}