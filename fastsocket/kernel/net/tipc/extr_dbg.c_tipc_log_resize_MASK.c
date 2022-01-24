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
struct TYPE_3__ {int echo; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* TIPC_LOG ; 
 int TIPC_PB_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(int log_size)
{
	int res = 0;

	FUNC2(&print_lock);
	if (TIPC_LOG->buf) {
		FUNC0(TIPC_LOG->buf);
		TIPC_LOG->buf = NULL;
	}
	if (log_size) {
		if (log_size < TIPC_PB_MIN_SIZE)
			log_size = TIPC_PB_MIN_SIZE;
		res = TIPC_LOG->echo;
		FUNC4(TIPC_LOG, FUNC1(log_size, GFP_ATOMIC),
				   log_size);
		TIPC_LOG->echo = res;
		res = !TIPC_LOG->buf;
	}
	FUNC3(&print_lock);

	return res;
}