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
struct TYPE_2__ {int /*<<< orphan*/  ack_timer; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 TYPE_1__ llc_main_station ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ sysctl_llc_station_ack_timeout ; 

__attribute__((used)) static int FUNC1(struct sk_buff *skb)
{
	FUNC0(&llc_main_station.ack_timer,
		  jiffies + sysctl_llc_station_ack_timeout);
	return 0;
}