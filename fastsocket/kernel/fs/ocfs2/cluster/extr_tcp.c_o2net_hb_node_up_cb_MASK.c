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
struct o2nm_node {int dummy; } ;
struct o2net_node {int /*<<< orphan*/  nn_lock; scalar_t__ nn_persistent_error; int /*<<< orphan*/  nn_timeout; scalar_t__ nn_last_connect_attempt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct o2net_node* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct o2net_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct o2nm_node *node, int node_num,
				void *data)
{
	struct o2net_node *nn = FUNC2(node_num);

	FUNC6(node_num);

	/* ensure an immediate connect attempt */
	nn->nn_last_connect_attempt = jiffies -
		(FUNC1(FUNC3()) + 1);

	if (node_num != FUNC5()) {
		/* believe it or not, accept and node hearbeating testing
		 * can succeed for this node before we got here.. so
		 * only use set_nn_state to clear the persistent error
		 * if that hasn't already happened */
		FUNC7(&nn->nn_lock);
		FUNC0(&nn->nn_timeout, 0);
		if (nn->nn_persistent_error)
			FUNC4(nn, NULL, 0, 0);
		FUNC8(&nn->nn_lock);
	}
}