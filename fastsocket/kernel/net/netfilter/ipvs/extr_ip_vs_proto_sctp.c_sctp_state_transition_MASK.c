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
struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ip_vs_protocol*,struct ip_vs_conn*,int,struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ip_vs_conn *cp, int direction,
		const struct sk_buff *skb, struct ip_vs_protocol *pp)
{
	int ret = 0;

	FUNC1(&cp->lock);
	ret = FUNC0(pp, cp, direction, skb);
	FUNC2(&cp->lock);

	return ret;
}