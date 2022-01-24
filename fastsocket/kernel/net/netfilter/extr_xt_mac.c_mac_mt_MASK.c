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
struct xt_match_param {struct xt_mac_info* matchinfo; } ;
struct xt_mac_info {int invert; int /*<<< orphan*/  srcaddr; } ;
struct sk_buff {scalar_t__ head; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, const struct xt_match_param *par)
{
    const struct xt_mac_info *info = par->matchinfo;

    /* Is mac pointer valid? */
    return FUNC2(skb) >= skb->head &&
	   FUNC2(skb) + ETH_HLEN <= skb->data
	   /* If so, compare... */
	   && ((!FUNC0(FUNC1(skb)->h_source, info->srcaddr))
		^ info->invert);
}