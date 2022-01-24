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
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  len; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __sum16 FUNC1(struct sk_buff *skb,
				      struct in6_addr *saddr,
				      struct in6_addr *daddr)
{
	return FUNC0(saddr, daddr, skb->len, IPPROTO_DCCP, skb->csum);
}