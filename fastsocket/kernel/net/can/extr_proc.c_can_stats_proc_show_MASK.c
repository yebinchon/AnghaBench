#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_6__ {scalar_t__ user_reset; scalar_t__ stats_reset; scalar_t__ rcv_entries_max; scalar_t__ rcv_entries; } ;
struct TYPE_5__ {scalar_t__ max_rx_rate; scalar_t__ max_tx_rate; scalar_t__ max_rx_match_ratio; scalar_t__ current_rx_rate; scalar_t__ current_tx_rate; scalar_t__ current_rx_match_ratio; scalar_t__ total_rx_rate; scalar_t__ total_tx_rate; scalar_t__ total_rx_match_ratio; scalar_t__ matches; scalar_t__ rx_frames; scalar_t__ tx_frames; } ;
struct TYPE_4__ {scalar_t__ function; } ;

/* Variables and functions */
 TYPE_3__ can_pstats ; 
 scalar_t__ can_stat_update ; 
 TYPE_2__ can_stats ; 
 TYPE_1__ can_stattimer ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	FUNC1(m, '\n');
	FUNC0(m, " %8ld transmitted frames (TXF)\n", can_stats.tx_frames);
	FUNC0(m, " %8ld received frames (RXF)\n", can_stats.rx_frames);
	FUNC0(m, " %8ld matched frames (RXMF)\n", can_stats.matches);

	FUNC1(m, '\n');

	if (can_stattimer.function == can_stat_update) {
		FUNC0(m, " %8ld %% total match ratio (RXMR)\n",
				can_stats.total_rx_match_ratio);

		FUNC0(m, " %8ld frames/s total tx rate (TXR)\n",
				can_stats.total_tx_rate);
		FUNC0(m, " %8ld frames/s total rx rate (RXR)\n",
				can_stats.total_rx_rate);

		FUNC1(m, '\n');

		FUNC0(m, " %8ld %% current match ratio (CRXMR)\n",
				can_stats.current_rx_match_ratio);

		FUNC0(m, " %8ld frames/s current tx rate (CTXR)\n",
				can_stats.current_tx_rate);
		FUNC0(m, " %8ld frames/s current rx rate (CRXR)\n",
				can_stats.current_rx_rate);

		FUNC1(m, '\n');

		FUNC0(m, " %8ld %% max match ratio (MRXMR)\n",
				can_stats.max_rx_match_ratio);

		FUNC0(m, " %8ld frames/s max tx rate (MTXR)\n",
				can_stats.max_tx_rate);
		FUNC0(m, " %8ld frames/s max rx rate (MRXR)\n",
				can_stats.max_rx_rate);

		FUNC1(m, '\n');
	}

	FUNC0(m, " %8ld current receive list entries (CRCV)\n",
			can_pstats.rcv_entries);
	FUNC0(m, " %8ld maximum receive list entries (MRCV)\n",
			can_pstats.rcv_entries_max);

	if (can_pstats.stats_reset)
		FUNC0(m, "\n %8ld statistic resets (STR)\n",
				can_pstats.stats_reset);

	if (can_pstats.user_reset)
		FUNC0(m, " %8ld user statistic resets (USTR)\n",
				can_pstats.user_reset);

	FUNC1(m, '\n');
	return 0;
}