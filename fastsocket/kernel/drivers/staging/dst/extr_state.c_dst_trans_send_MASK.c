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
struct dst_trans {int /*<<< orphan*/  cmd; struct bio* bio; TYPE_1__* n; } ;
struct dst_state {int /*<<< orphan*/  socket; } ;
struct dst_cmd {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct dst_state* state; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dst_state*,int /*<<< orphan*/ *,struct bio*) ; 
 int FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_state*) ; 

int FUNC8(struct dst_trans *t)
{
	int err;
	struct dst_state *st = t->n->state;
	struct bio *bio = t->bio;

	FUNC1(&t->cmd);

	FUNC5(st);
	if (!st->socket) {
		err = FUNC4(st);
		if (err)
			goto err_out_unlock;
	}

	if (FUNC0(bio) == WRITE) {
		err = FUNC3(st, &t->cmd, t->bio);
	} else {
		err = FUNC2(st->socket, &t->cmd,
				sizeof(struct dst_cmd), 0);
	}
	if (err)
		goto err_out_reset;

	FUNC7(st);
	return 0;

err_out_reset:
	FUNC6(st);
err_out_unlock:
	FUNC7(st);

	return err;
}