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
struct o2nm_node {int /*<<< orphan*/  nd_num; int /*<<< orphan*/  nd_ipv4_port; int /*<<< orphan*/  nd_ipv4_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_KTHREAD ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * o2net_listen_sock ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * o2net_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct o2nm_node *node)
{
	int ret = 0;

	FUNC0(o2net_wq != NULL);
	FUNC0(o2net_listen_sock != NULL);

	FUNC3(ML_KTHREAD, "starting o2net thread...\n");
	o2net_wq = FUNC1("o2net");
	if (o2net_wq == NULL) {
		FUNC3(ML_ERROR, "unable to launch o2net thread\n");
		return -ENOMEM; /* ? */
	}

	ret = FUNC4(node->nd_ipv4_address,
					node->nd_ipv4_port);
	if (ret) {
		FUNC2(o2net_wq);
		o2net_wq = NULL;
	} else
		FUNC5(node->nd_num);

	return ret;
}