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
struct ethhdr {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct ethhdr* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(const struct sk_buff *skb, unsigned char *haddr)
{
	const struct ethhdr *eth = FUNC0(skb);
	FUNC1(haddr, eth->h_source, ETH_ALEN);
	return ETH_ALEN;
}