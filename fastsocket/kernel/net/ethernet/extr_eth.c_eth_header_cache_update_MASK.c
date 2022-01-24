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
struct net_device {int dummy; } ;
struct hh_cache {scalar_t__ hh_data; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 

void FUNC2(struct hh_cache *hh,
			     const struct net_device *dev,
			     const unsigned char *haddr)
{
	FUNC1(((u8 *) hh->hh_data) + FUNC0(sizeof(struct ethhdr)),
	       haddr, ETH_ALEN);
}