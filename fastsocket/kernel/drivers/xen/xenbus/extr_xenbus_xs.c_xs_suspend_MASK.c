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
struct TYPE_2__ {int /*<<< orphan*/  response_mutex; int /*<<< orphan*/  request_mutex; int /*<<< orphan*/  watch_mutex; int /*<<< orphan*/  transaction_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ xs_state ; 

void FUNC2(void)
{
	FUNC0(&xs_state.transaction_mutex);
	FUNC0(&xs_state.watch_mutex);
	FUNC1(&xs_state.request_mutex);
	FUNC1(&xs_state.response_mutex);
}