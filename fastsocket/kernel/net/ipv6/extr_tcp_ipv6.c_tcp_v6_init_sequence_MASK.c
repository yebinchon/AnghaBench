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
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_5__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_8__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static __u32 FUNC3(struct sk_buff *skb)
{
	return FUNC1(FUNC0(skb)->daddr.s6_addr32,
					    FUNC0(skb)->saddr.s6_addr32,
					    FUNC2(skb)->dest,
					    FUNC2(skb)->source);
}