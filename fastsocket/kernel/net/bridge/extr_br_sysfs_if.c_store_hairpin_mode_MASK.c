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
struct net_bridge_port {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BR_HAIRPIN_MODE ; 

__attribute__((used)) static ssize_t FUNC0(struct net_bridge_port *p, unsigned long v)
{
	if (v)
		p->flags |= BR_HAIRPIN_MODE;
	else
		p->flags &= ~BR_HAIRPIN_MODE;
	return 0;
}