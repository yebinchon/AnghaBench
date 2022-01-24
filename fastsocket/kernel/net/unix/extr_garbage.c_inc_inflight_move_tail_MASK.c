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
struct unix_sock {int /*<<< orphan*/  link; scalar_t__ gc_maybe_cycle; int /*<<< orphan*/  inflight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gc_candidates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct unix_sock *u)
{
	FUNC0(&u->inflight);
	/*
	 * If this still might be part of a cycle, move it to the end
	 * of the list, so that it's checked even if it was already
	 * passed over
	 */
	if (u->gc_maybe_cycle)
		FUNC1(&u->link, &gc_candidates);
}