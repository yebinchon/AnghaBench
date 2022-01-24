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
struct TYPE_2__ {int size; int /*<<< orphan*/  pool; } ;
union cvmx_pko_reg_cmd_buf {int u64; TYPE_1__ s; } ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_FPA_OUTPUT_BUFFER_POOL ; 
 int CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ; 
 int CVMX_PKO_MAX_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ; 
 int /*<<< orphan*/  CVMX_PKO_REG_CMD_BUF ; 
 int /*<<< orphan*/  CVMX_PKO_REG_QUEUE_MODE ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(void)
{
	int i;
	uint64_t priority = 8;
	union cvmx_pko_reg_cmd_buf config;

	/*
	 * Set the size of the PKO command buffers to an odd number of
	 * 64bit words. This allows the normal two word send to stay
	 * aligned and never span a comamnd word buffer.
	 */
	config.u64 = 0;
	config.s.pool = CVMX_FPA_OUTPUT_BUFFER_POOL;
	config.s.size = CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE / 8 - 1;

	FUNC6(CVMX_PKO_REG_CMD_BUF, config.u64);

	for (i = 0; i < CVMX_PKO_MAX_OUTPUT_QUEUES; i++)
		FUNC3(CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, i, 1,
				     &priority);

	/*
	 * If we aren't using all of the queues optimize PKO's
	 * internal memory.
	 */
	if (FUNC0(OCTEON_CN38XX) || FUNC0(OCTEON_CN58XX)
	    || FUNC0(OCTEON_CN56XX)
	    || FUNC0(OCTEON_CN52XX)) {
		int num_interfaces = FUNC2();
		int last_port =
		    FUNC1(num_interfaces - 1);
		int max_queues =
		    FUNC4(last_port) +
		    FUNC5(last_port);
		if (FUNC0(OCTEON_CN38XX)) {
			if (max_queues <= 32)
				FUNC6(CVMX_PKO_REG_QUEUE_MODE, 2);
			else if (max_queues <= 64)
				FUNC6(CVMX_PKO_REG_QUEUE_MODE, 1);
		} else {
			if (max_queues <= 64)
				FUNC6(CVMX_PKO_REG_QUEUE_MODE, 2);
			else if (max_queues <= 128)
				FUNC6(CVMX_PKO_REG_QUEUE_MODE, 1);
		}
	}
}