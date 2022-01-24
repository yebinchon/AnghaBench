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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; struct dst_entry* child; } ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCIATION__SENDTO ; 
#define  IPPROTO_AH 130 
#define  IPPROTO_COMP 129 
#define  IPPROTO_ESP 128 
 int /*<<< orphan*/  SECCLASS_ASSOCIATION ; 
 int /*<<< orphan*/  SECINITSID_UNLABELED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC1 (struct xfrm_state*) ; 
 struct dst_entry* FUNC2 (struct sk_buff*) ; 

int FUNC3(u32 isec_sid, struct sk_buff *skb,
					struct common_audit_data *ad, u8 proto)
{
	struct dst_entry *dst;
	int rc = 0;

	dst = FUNC2(skb);

	if (dst) {
		struct dst_entry *dst_test;

		for (dst_test = dst; dst_test != NULL;
		     dst_test = dst_test->child) {
			struct xfrm_state *x = dst_test->xfrm;

			if (x && FUNC1(x))
				goto out;
		}
	}

	switch (proto) {
	case IPPROTO_AH:
	case IPPROTO_ESP:
	case IPPROTO_COMP:
		/*
		 * We should have already seen this packet once before
		 * it underwent xfrm(s). No need to subject it to the
		 * unlabeled check.
		 */
		goto out;
	default:
		break;
	}

	/*
	 * This check even when there's no association involved is
	 * intended, according to Trent Jaeger, to make sure a
	 * process can't engage in non-ipsec communication unless
	 * explicitly allowed by policy.
	 */

	rc = FUNC0(isec_sid, SECINITSID_UNLABELED, SECCLASS_ASSOCIATION,
			  ASSOCIATION__SENDTO, ad);
out:
	return rc;
}