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
struct netfs_trans {int flags; int result; } ;
struct netfs_state {int /*<<< orphan*/  psb; } ;

/* Variables and functions */
 int NETFS_TRANS_SINGLE_DST ; 
 int /*<<< orphan*/  FUNC0 (struct netfs_trans*,struct netfs_state*) ; 
 int FUNC1 (struct netfs_trans*,struct netfs_state*) ; 
 int FUNC2 (struct netfs_trans*,struct netfs_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct netfs_trans *t, struct netfs_state *st)
{
	int err;

	err = FUNC1(t, st);
	if (err)
		return err;

	err = FUNC2(t, st);
	if (err)
		goto err_out_free;

	if (t->flags & NETFS_TRANS_SINGLE_DST)
		FUNC3(st->psb);

	return 0;

err_out_free:
	t->result = err;
	FUNC0(t, st);

	return err;
}