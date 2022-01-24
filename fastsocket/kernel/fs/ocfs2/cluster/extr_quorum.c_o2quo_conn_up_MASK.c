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
typedef  int /*<<< orphan*/  u8 ;
struct o2quo_state {scalar_t__ qs_connected; int /*<<< orphan*/  qs_lock; int /*<<< orphan*/  qs_hb_bm; int /*<<< orphan*/  qs_conn_bm; } ;

/* Variables and functions */
 scalar_t__ O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct o2quo_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct o2quo_state*,int /*<<< orphan*/ ) ; 
 struct o2quo_state o2quo_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(u8 node)
{
	struct o2quo_state *qs = &o2quo_state;

	FUNC5(&qs->qs_lock);

	qs->qs_connected++;
	FUNC1(qs->qs_connected == O2NM_MAX_NODES,
		        "node %u\n", node);
	FUNC1(FUNC7(node, qs->qs_conn_bm), "node %u\n", node);
	FUNC4(node, qs->qs_conn_bm);

	FUNC0(0, "node %u, %d total\n", node, qs->qs_connected);

	if (!FUNC7(node, qs->qs_hb_bm))
		FUNC3(qs, node);
	else
		FUNC2(qs, node);

	FUNC6(&qs->qs_lock);
}