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
 int USBPORTSC_CSC ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(unsigned long port_addr)
{
	int i;

	for (i = 10; i < 250; i += 10) {
		if (FUNC0(port_addr) & USBPORTSC_CSC)
			return;
		FUNC1(10);
	}
	/* Log a warning? */
}