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
struct xfrm_policy_afinfo {int /*<<< orphan*/  (* decode_session ) (struct sk_buff*,struct flowi*,int) ;} ;
struct sk_buff {int dummy; } ;
struct flowi {int /*<<< orphan*/  secid; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct flowi*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfrm_policy_afinfo* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_policy_afinfo*) ; 

int FUNC5(struct sk_buff *skb, struct flowi *fl,
			  unsigned int family, int reverse)
{
	struct xfrm_policy_afinfo *afinfo = FUNC3(family);
	int err;

	if (FUNC2(afinfo == NULL))
		return -EAFNOSUPPORT;

	afinfo->decode_session(skb, fl, reverse);
	err = FUNC0(skb, &fl->secid);
	FUNC4(afinfo);
	return err;
}