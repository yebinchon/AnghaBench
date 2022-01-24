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
struct TYPE_2__ {unsigned long jiffies_init; int rx_frames; int tx_frames; int matches; int total_rx_match_ratio; int rx_frames_delta; int current_rx_match_ratio; int matches_delta; scalar_t__ current_tx_rate; int tx_frames_delta; scalar_t__ current_rx_rate; scalar_t__ max_tx_rate; scalar_t__ max_rx_rate; int max_rx_match_ratio; void* total_rx_rate; void* total_tx_rate; } ;

/* Variables and functions */
 int HZ ; 
 int ULONG_MAX ; 
 void* FUNC0 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ can_stats ; 
 int /*<<< orphan*/  can_stattimer ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ user_reset ; 

void FUNC4(unsigned long data)
{
	unsigned long j = jiffies; /* snapshot */

	/* restart counting in timer context on user request */
	if (user_reset)
		FUNC1();

	/* restart counting on jiffies overflow */
	if (j < can_stats.jiffies_init)
		FUNC1();

	/* prevent overflow in calc_rate() */
	if (can_stats.rx_frames > (ULONG_MAX / HZ))
		FUNC1();

	/* prevent overflow in calc_rate() */
	if (can_stats.tx_frames > (ULONG_MAX / HZ))
		FUNC1();

	/* matches overflow - very improbable */
	if (can_stats.matches > (ULONG_MAX / 100))
		FUNC1();

	/* calc total values */
	if (can_stats.rx_frames)
		can_stats.total_rx_match_ratio = (can_stats.matches * 100) /
			can_stats.rx_frames;

	can_stats.total_tx_rate = FUNC0(can_stats.jiffies_init, j,
					    can_stats.tx_frames);
	can_stats.total_rx_rate = FUNC0(can_stats.jiffies_init, j,
					    can_stats.rx_frames);

	/* calc current values */
	if (can_stats.rx_frames_delta)
		can_stats.current_rx_match_ratio =
			(can_stats.matches_delta * 100) /
			can_stats.rx_frames_delta;

	can_stats.current_tx_rate = FUNC0(0, HZ, can_stats.tx_frames_delta);
	can_stats.current_rx_rate = FUNC0(0, HZ, can_stats.rx_frames_delta);

	/* check / update maximum values */
	if (can_stats.max_tx_rate < can_stats.current_tx_rate)
		can_stats.max_tx_rate = can_stats.current_tx_rate;

	if (can_stats.max_rx_rate < can_stats.current_rx_rate)
		can_stats.max_rx_rate = can_stats.current_rx_rate;

	if (can_stats.max_rx_match_ratio < can_stats.current_rx_match_ratio)
		can_stats.max_rx_match_ratio = can_stats.current_rx_match_ratio;

	/* clear values for 'current rate' calculation */
	can_stats.tx_frames_delta = 0;
	can_stats.rx_frames_delta = 0;
	can_stats.matches_delta   = 0;

	/* restart timer (one second) */
	FUNC2(&can_stattimer, FUNC3(jiffies + HZ));
}