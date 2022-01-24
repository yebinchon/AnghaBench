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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int* interface_port_count ; 

__attribute__((used)) static int FUNC2(int interface)
{
	int ipd_port = FUNC1(interface, 0);
	int num_ports = interface_port_count[interface];

	while (num_ports--) {
		FUNC0(ipd_port);
		ipd_port++;
	}
	return 0;
}