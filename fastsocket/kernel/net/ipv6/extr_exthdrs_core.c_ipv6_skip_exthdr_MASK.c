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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct sk_buff const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(const struct sk_buff *skb, int start, u8 *nexthdrp)
{
	__be16 fragoff;

	return FUNC0(skb, start, nexthdrp, &fragoff);
}