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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccph_sport; int /*<<< orphan*/  dccph_dport; } ;
struct TYPE_3__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff const*) ; 
 TYPE_1__* FUNC1 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC3(const struct sk_buff *skb)
{
	return FUNC2(FUNC1(skb)->daddr,
					   FUNC1(skb)->saddr,
					   FUNC0(skb)->dccph_dport,
					   FUNC0(skb)->dccph_sport);
}