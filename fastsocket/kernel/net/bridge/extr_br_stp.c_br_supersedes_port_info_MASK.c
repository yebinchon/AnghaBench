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
struct net_bridge_port {scalar_t__ designated_cost; scalar_t__ designated_port; TYPE_1__* br; int /*<<< orphan*/  designated_bridge; int /*<<< orphan*/  designated_root; } ;
struct br_config_bpdu {scalar_t__ root_path_cost; scalar_t__ port_id; int /*<<< orphan*/  bridge_id; int /*<<< orphan*/  root; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridge_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
{
	int t;

	t = FUNC0(&bpdu->root, &p->designated_root, 8);
	if (t < 0)
		return 1;
	else if (t > 0)
		return 0;

	if (bpdu->root_path_cost < p->designated_cost)
		return 1;
	else if (bpdu->root_path_cost > p->designated_cost)
		return 0;

	t = FUNC0(&bpdu->bridge_id, &p->designated_bridge, 8);
	if (t < 0)
		return 1;
	else if (t > 0)
		return 0;

	if (FUNC0(&bpdu->bridge_id, &p->br->bridge_id, 8))
		return 1;

	if (bpdu->port_id <= p->designated_port)
		return 1;

	return 0;
}