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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xid_r_count; } ;

/* Variables and functions */
 TYPE_1__ llc_main_station ; 

__attribute__((used)) static int FUNC0(struct sk_buff *skb)
{
	llc_main_station.xid_r_count++;
	return 0;
}