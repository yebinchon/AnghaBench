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
struct ipc_ids {int seq_max; int /*<<< orphan*/  ipcs_idr; scalar_t__ seq; scalar_t__ in_use; int /*<<< orphan*/  rw_mutex; } ;

/* Variables and functions */
 int INT_MAX ; 
 int SEQ_MULTIPLIER ; 
 int USHORT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ipc_ids *ids)
{
	FUNC1(&ids->rw_mutex);

	ids->in_use = 0;
	ids->seq = 0;
	{
		int seq_limit = INT_MAX/SEQ_MULTIPLIER;
		if (seq_limit > USHORT_MAX)
			ids->seq_max = USHORT_MAX;
		 else
		 	ids->seq_max = seq_limit;
	}

	FUNC0(&ids->ipcs_idr);
}