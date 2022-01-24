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
typedef  long u32 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int dccpor_elapsed_time; } ;
struct TYPE_4__ {TYPE_1__ dccps_options_received; } ;

/* Variables and functions */
 long DCCP_SANE_RTT_MAX ; 
 long DCCP_SANE_RTT_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int) ; 

u32 FUNC3(struct sock *sk, long delta)
{
	/* dccpor_elapsed_time is either zeroed out or set and > 0 */
	delta -= FUNC1(sk)->dccps_options_received.dccpor_elapsed_time * 10;

	if (FUNC2(delta <= 0)) {
		FUNC0("unusable RTT sample %ld, using min\n", delta);
		return DCCP_SANE_RTT_MIN;
	}
	if (FUNC2(delta > DCCP_SANE_RTT_MAX)) {
		FUNC0("RTT sample %ld too large, using max\n", delta);
		return DCCP_SANE_RTT_MAX;
	}

	return delta;
}