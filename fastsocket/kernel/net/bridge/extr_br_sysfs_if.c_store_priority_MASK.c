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
struct net_bridge_port {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int BR_PORT_BITS ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC1(struct net_bridge_port *p, unsigned long v)
{
	if (v >= (1<<(16-BR_PORT_BITS)))
		return -ERANGE;
	FUNC0(p, v);
	return 0;
}