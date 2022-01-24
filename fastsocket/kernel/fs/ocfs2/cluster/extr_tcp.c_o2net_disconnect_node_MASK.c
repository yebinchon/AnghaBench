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
struct o2nm_node {int /*<<< orphan*/  nd_num; } ;
struct o2net_node {int /*<<< orphan*/  nn_still_up; int /*<<< orphan*/  nn_connect_work; int /*<<< orphan*/  nn_connect_expired; int /*<<< orphan*/  nn_lock; int /*<<< orphan*/  nn_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct o2net_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct o2net_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ o2net_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct o2nm_node *node)
{
	struct o2net_node *nn = FUNC3(node->nd_num);

	/* don't reconnect until it's heartbeating again */
	FUNC5(&nn->nn_lock);
	FUNC0(&nn->nn_timeout, 0);
	FUNC4(nn, NULL, 0, -ENOTCONN);
	FUNC6(&nn->nn_lock);

	if (o2net_wq) {
		FUNC1(&nn->nn_connect_expired);
		FUNC1(&nn->nn_connect_work);
		FUNC1(&nn->nn_still_up);
		FUNC2(o2net_wq);
	}
}