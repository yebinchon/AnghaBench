#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs4_state {TYPE_2__* owner; int /*<<< orphan*/  stateid; int /*<<< orphan*/  seqlock; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__ so_sequence; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(nfs4_stateid *dst, struct nfs4_state *state)
{
	int ret;
	int seq;

	do {
		seq = FUNC2(&state->seqlock);
		FUNC1(dst, &state->stateid);
		ret = 0;
		FUNC4();
		if (!FUNC0(&state->owner->so_sequence.list))
			ret = -EWOULDBLOCK;
	} while (FUNC3(&state->seqlock, seq));
	return ret;
}