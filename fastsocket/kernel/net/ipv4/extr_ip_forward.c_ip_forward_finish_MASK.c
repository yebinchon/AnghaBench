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
struct ip_options {int /*<<< orphan*/  optlen; } ;
struct TYPE_4__ {struct ip_options opt; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTFORWDATAGRAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct ip_options * opt	= &(FUNC0(skb)->opt);

	FUNC1(FUNC2(FUNC5(skb)->dev), IPSTATS_MIB_OUTFORWDATAGRAMS);

	if (FUNC6(opt->optlen))
		FUNC4(skb);

	return FUNC3(skb);
}