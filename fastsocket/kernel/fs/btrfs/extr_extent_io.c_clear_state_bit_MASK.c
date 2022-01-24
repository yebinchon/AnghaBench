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
typedef  scalar_t__ u64 ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/ * tree; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  wq; } ;
struct extent_io_tree {scalar_t__ dirty_bytes; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EXTENT_CTLBITS ; 
 int EXTENT_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_io_tree*,struct extent_state*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_io_tree*,struct extent_state*) ; 
 struct extent_state* FUNC4 (struct extent_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_state *FUNC7(struct extent_io_tree *tree,
					    struct extent_state *state,
					    int *bits, int wake)
{
	struct extent_state *next;
	int bits_to_clear = *bits & ~EXTENT_CTLBITS;

	if ((bits_to_clear & EXTENT_DIRTY) && (state->state & EXTENT_DIRTY)) {
		u64 range = state->end - state->start + 1;
		FUNC0(range > tree->dirty_bytes);
		tree->dirty_bytes -= range;
	}
	FUNC1(tree, state, bits);
	state->state &= ~bits_to_clear;
	if (wake)
		FUNC6(&state->wq);
	if (state->state == 0) {
		next = FUNC4(state);
		if (state->tree) {
			FUNC5(&state->rb_node, &tree->state);
			state->tree = NULL;
			FUNC2(state);
		} else {
			FUNC0(1);
		}
	} else {
		FUNC3(tree, state);
		next = FUNC4(state);
	}
	return next;
}