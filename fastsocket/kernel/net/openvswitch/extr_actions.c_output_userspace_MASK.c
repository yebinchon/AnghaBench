#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_upcall_info {scalar_t__ pid; struct nlattr const* userdata; int /*<<< orphan*/ * key; int /*<<< orphan*/  cmd; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {TYPE_1__* flow; } ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_PACKET_CMD_ACTION ; 
#define  OVS_USERSPACE_ATTR_PID 129 
#define  OVS_USERSPACE_ATTR_USERDATA 128 
 struct nlattr* FUNC1 (struct nlattr const*) ; 
 scalar_t__ FUNC2 (struct nlattr const*) ; 
 int FUNC3 (struct nlattr const*) ; 
 struct nlattr* FUNC4 (struct nlattr const*,int*) ; 
 int FUNC5 (struct nlattr const*) ; 
 int FUNC6 (struct datapath*,struct sk_buff*,struct dp_upcall_info*) ; 

__attribute__((used)) static int FUNC7(struct datapath *dp, struct sk_buff *skb,
			    const struct nlattr *attr)
{
	struct dp_upcall_info upcall;
	const struct nlattr *a;
	int rem;

	upcall.cmd = OVS_PACKET_CMD_ACTION;
	upcall.key = &FUNC0(skb)->flow->key;
	upcall.userdata = NULL;
	upcall.pid = 0;

	for (a = FUNC1(attr), rem = FUNC3(attr); rem > 0;
		 a = FUNC4(a, &rem)) {
		switch (FUNC5(a)) {
		case OVS_USERSPACE_ATTR_USERDATA:
			upcall.userdata = a;
			break;

		case OVS_USERSPACE_ATTR_PID:
			upcall.pid = FUNC2(a);
			break;
		}
	}

	return FUNC6(dp, skb, &upcall);
}