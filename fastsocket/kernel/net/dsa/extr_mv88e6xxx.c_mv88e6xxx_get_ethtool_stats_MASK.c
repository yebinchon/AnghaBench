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
typedef  int uint64_t ;
typedef  int u64 ;
typedef  int u32 ;
struct mv88e6xxx_priv_state {int /*<<< orphan*/  stats_mutex; } ;
struct mv88e6xxx_hw_stat {int sizeof_stat; scalar_t__ reg; } ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,scalar_t__,int*) ; 
 int FUNC3 (struct dsa_switch*,int) ; 

void FUNC4(struct dsa_switch *ds,
				 int nr_stats, struct mv88e6xxx_hw_stat *stats,
				 int port, uint64_t *data)
{
	struct mv88e6xxx_priv_state *ps = (void *)(ds + 1);
	int ret;
	int i;

	FUNC0(&ps->stats_mutex);

	ret = FUNC3(ds, port);
	if (ret < 0) {
		FUNC1(&ps->stats_mutex);
		return;
	}

	/*
	 * Read each of the counters.
	 */
	for (i = 0; i < nr_stats; i++) {
		struct mv88e6xxx_hw_stat *s = stats + i;
		u32 low;
		u32 high;

		FUNC2(ds, s->reg, &low);
		if (s->sizeof_stat == 8)
			FUNC2(ds, s->reg + 1, &high);
		else
			high = 0;

		data[i] = (((u64)high) << 32) | low;
	}

	FUNC1(&ps->stats_mutex);
}