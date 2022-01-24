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
struct o2net_status_wait {scalar_t__ ns_status; int /*<<< orphan*/  ns_sys_status; int /*<<< orphan*/  ns_wq; int /*<<< orphan*/  ns_node_item; int /*<<< orphan*/  ns_id; } ;
struct o2net_node {int /*<<< orphan*/  nn_lock; int /*<<< orphan*/  nn_status_list; int /*<<< orphan*/  nn_status_idr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  O2NET_ERR_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct o2net_status_wait*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct o2net_node *nn, struct o2net_status_wait *nsw)
{
	int ret = 0;

	do {
		if (!FUNC1(&nn->nn_status_idr, GFP_ATOMIC)) {
			ret = -EAGAIN;
			break;
		}
		FUNC4(&nn->nn_lock);
		ret = FUNC0(&nn->nn_status_idr, nsw, &nsw->ns_id);
		if (ret == 0)
			FUNC3(&nsw->ns_node_item,
				      &nn->nn_status_list);
		FUNC5(&nn->nn_lock);
	} while (ret == -EAGAIN);

	if (ret == 0)  {
		FUNC2(&nsw->ns_wq);
		nsw->ns_sys_status = O2NET_ERR_NONE;
		nsw->ns_status = 0;
	}

	return ret;
}