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
struct dst_state {int need_exit; int /*<<< orphan*/  thread_wait; } ;
struct dst_node {struct dst_state* state; scalar_t__ bdev; TYPE_1__* disk; scalar_t__ queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  first_minor; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  dst_hash_lock ; 
 int /*<<< orphan*/  dst_index_idr ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct dst_node *n)
{
	struct dst_state *st = n->state;

	if (!st)
		return;

	if (n->queue) {
		FUNC0(n->queue);

		FUNC7(&dst_hash_lock);
		FUNC6(&dst_index_idr, n->disk->first_minor);
		FUNC8(&dst_hash_lock);

		FUNC9(n->disk);
	}

	if (n->bdev) {
		FUNC10(n->bdev);
		FUNC1(n->bdev, FMODE_READ|FMODE_WRITE);
	}

	FUNC3(st);
	st->need_exit = 1;
	FUNC2(st);
	FUNC5(st);

	FUNC11(&st->thread_wait);

	FUNC4(st);
	n->state = NULL;
}