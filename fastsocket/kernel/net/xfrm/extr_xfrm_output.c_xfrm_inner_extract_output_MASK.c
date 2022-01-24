#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ family; } ;
struct xfrm_state {struct xfrm_mode* inner_mode; TYPE_1__ sel; } ;
struct xfrm_mode {TYPE_3__* afinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* extract_output ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfrm_mode* FUNC3 (struct xfrm_state*,int /*<<< orphan*/ ) ; 

int FUNC4(struct xfrm_state *x, struct sk_buff *skb)
{
	struct xfrm_mode *inner_mode;
	if (x->sel.family == AF_UNSPEC)
		inner_mode = FUNC3(x,
				FUNC2(FUNC0(skb)->ops->family));
	else
		inner_mode = x->inner_mode;

	if (inner_mode == NULL)
		return -EAFNOSUPPORT;
	return inner_mode->afinfo->extract_output(x, skb);
}