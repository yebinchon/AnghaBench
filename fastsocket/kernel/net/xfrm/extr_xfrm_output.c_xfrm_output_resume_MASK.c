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
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__* ops; int /*<<< orphan*/  xfrm; } ;
struct TYPE_3__ {int (* local_out ) (struct sk_buff*) ;int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  xfrm_output2 ; 
 int FUNC7 (struct sk_buff*,int) ; 

int FUNC8(struct sk_buff *skb, int err)
{
	while (FUNC1((err = FUNC7(skb, err)) == 0)) {
		FUNC3(skb);

		err = FUNC4(skb)->ops->local_out(skb);
		if (FUNC6(err != 1))
			goto out;

		if (!FUNC4(skb)->xfrm)
			return FUNC0(skb);

		err = FUNC2(FUNC4(skb)->ops->family,
			      NF_INET_POST_ROUTING, skb,
			      NULL, FUNC4(skb)->dev, xfrm_output2);
		if (FUNC6(err != 1))
			goto out;
	}

	if (err == -EINPROGRESS)
		err = 0;

out:
	return err;
}