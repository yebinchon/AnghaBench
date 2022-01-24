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
struct vxlan_port {int /*<<< orphan*/  vs; } ;
struct vport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vxlan_port* FUNC2 (struct vport*) ; 

__attribute__((used)) static void FUNC3(struct vport *vport)
{
	struct vxlan_port *vxlan_port = FUNC2(vport);

	FUNC1(vxlan_port->vs);

	FUNC0(vport);
}