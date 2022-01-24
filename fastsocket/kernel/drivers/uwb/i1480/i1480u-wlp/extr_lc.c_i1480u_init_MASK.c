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
struct i1480u {int /*<<< orphan*/  wlp; int /*<<< orphan*/  rssi_stats; int /*<<< orphan*/  lqe_stats; int /*<<< orphan*/  notif_edc; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  options; int /*<<< orphan*/  tx_list_lock; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
void FUNC6(struct i1480u *i1480u)
{
	/* nothing so far... doesn't it suck? */
	FUNC2(&i1480u->lock);
	FUNC0(&i1480u->tx_list);
	FUNC2(&i1480u->tx_list_lock);
	FUNC5(&i1480u->options);
	FUNC1(&i1480u->tx_errors);
	FUNC1(&i1480u->rx_errors);
#ifdef i1480u_FLOW_CONTROL
	edc_init(&i1480u->notif_edc);
#endif
	FUNC3(&i1480u->lqe_stats);
	FUNC3(&i1480u->rssi_stats);
	FUNC4(&i1480u->wlp);
}