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
struct TYPE_3__ {int cap; } ;
struct common_audit_data {TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  SECCLASS_CAPABILITY ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int capability)
{
	int err;
	struct common_audit_data ad;

	err = FUNC4(skb, capability);
	if (err)
		return err;

	FUNC1(&ad, CAP);
	ad.u.cap = capability;

	return FUNC3(FUNC2(skb).sid, FUNC2(skb).sid,
			    SECCLASS_CAPABILITY, FUNC0(capability), &ad);
}