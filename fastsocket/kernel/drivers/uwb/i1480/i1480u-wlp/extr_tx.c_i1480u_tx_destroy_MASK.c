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
struct i1480u_tx {int /*<<< orphan*/  list_node; } ;
struct i1480u {int /*<<< orphan*/  tx_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i1480u_tx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static
void FUNC4(struct i1480u *i1480u, struct i1480u_tx *wtx)
{
	unsigned long flags;
	FUNC2(&i1480u->tx_list_lock, flags);	/* not active any more */
	FUNC1(&wtx->list_node);
	FUNC0(wtx);
	FUNC3(&i1480u->tx_list_lock, flags);
}