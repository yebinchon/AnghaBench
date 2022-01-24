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
struct unix_sock {int /*<<< orphan*/  link; int /*<<< orphan*/  inflight; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_gc_lock ; 
 struct sock* FUNC6 (struct file*) ; 
 struct unix_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  unix_tot_inflight ; 

void FUNC8(struct file *fp)
{
	struct sock *s = FUNC6(fp);
	if (s) {
		struct unix_sock *u = FUNC7(s);
		FUNC4(&unix_gc_lock);
		FUNC0(FUNC3(&u->link));
		if (FUNC1(&u->inflight))
			FUNC2(&u->link);
		unix_tot_inflight--;
		FUNC5(&unix_gc_lock);
	}
}