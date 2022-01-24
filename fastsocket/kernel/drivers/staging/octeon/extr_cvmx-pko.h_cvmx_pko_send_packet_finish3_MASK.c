#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union cvmx_buf_ptr {int /*<<< orphan*/  u64; } ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  cvmx_pko_status_t ;
typedef  scalar_t__ cvmx_pko_lock_t ;
struct TYPE_3__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_1__ cvmx_pko_command_word0_t ;
typedef  scalar_t__ cvmx_cmd_queue_result_t ;

/* Variables and functions */
 scalar_t__ CVMX_CMD_QUEUE_FULL ; 
 scalar_t__ CVMX_CMD_QUEUE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CVMX_CMD_QUEUE_SUCCESS ; 
 int /*<<< orphan*/  CVMX_PKO_INVALID_QUEUE ; 
 scalar_t__ CVMX_PKO_LOCK_ATOMIC_TAG ; 
 scalar_t__ CVMX_PKO_LOCK_CMD_QUEUE ; 
 int /*<<< orphan*/  CVMX_PKO_NO_MEMORY ; 
 int /*<<< orphan*/  CVMX_PKO_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline cvmx_pko_status_t FUNC5(
	uint64_t port,
	uint64_t queue,
	cvmx_pko_command_word0_t pko_command,
	union cvmx_buf_ptr packet,
	uint64_t addr,
	cvmx_pko_lock_t use_locking)
{
	cvmx_cmd_queue_result_t result;
	if (use_locking == CVMX_PKO_LOCK_ATOMIC_TAG)
		FUNC3();
	result = FUNC1(FUNC0(queue),
				       (use_locking == CVMX_PKO_LOCK_CMD_QUEUE),
				       pko_command.u64, packet.u64, addr);
	if (FUNC4(result == CVMX_CMD_QUEUE_SUCCESS)) {
		FUNC2(port, queue, 3);
		return CVMX_PKO_SUCCESS;
	} else if ((result == CVMX_CMD_QUEUE_NO_MEMORY)
		   || (result == CVMX_CMD_QUEUE_FULL)) {
		return CVMX_PKO_NO_MEMORY;
	} else {
		return CVMX_PKO_INVALID_QUEUE;
	}
}