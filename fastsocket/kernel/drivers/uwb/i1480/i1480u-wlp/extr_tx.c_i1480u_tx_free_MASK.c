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
struct i1480u_tx {int /*<<< orphan*/  urb; scalar_t__ skb; struct i1480u_tx* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i1480u_tx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC3(struct i1480u_tx *wtx)
{
	FUNC1(wtx->buf);
	if (wtx->skb)
		FUNC0(wtx->skb);
	FUNC2(wtx->urb);
	FUNC1(wtx);
}