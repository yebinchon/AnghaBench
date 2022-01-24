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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(int interface, int num_ports)
{
	int index;

	FUNC0(interface, num_ports);

	for (index = 0; index < num_ports; index++) {
		int ipd_port = FUNC4(interface, index);
		FUNC1(interface, index);
		FUNC3(ipd_port,
					     FUNC2
					     (ipd_port));

	}

	return 0;
}