#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_offset; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC11(struct sk_buff *skb,
				  int features, bool tx_path)
{
	if (FUNC10(FUNC6(skb, tx_path))) {
		int err;

		FUNC9(skb);

		if (FUNC3(skb) &&
		    (err = FUNC2(skb, 0, 0, GFP_ATOMIC)))
			return FUNC0(err);
	}

	FUNC1(skb)->mac_offset = FUNC4(skb);
	FUNC7(skb);
	FUNC8(skb);

	return FUNC5(skb, features);
}