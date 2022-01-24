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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mesh_table {int hash_mask; int /*<<< orphan*/  hash_rnd; } ;
struct ieee80211_sub_if_data {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(const u8 *addr, struct ieee80211_sub_if_data *sdata,
			   struct mesh_table *tbl)
{
	/* Use last four bytes of hw addr and interface index as hash index */
	return FUNC0(*(u32 *)(addr+2), sdata->dev->ifindex,
			    tbl->hash_rnd) & tbl->hash_mask;
}