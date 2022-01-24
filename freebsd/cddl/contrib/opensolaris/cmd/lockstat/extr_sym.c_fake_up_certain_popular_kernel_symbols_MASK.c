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
 int /*<<< orphan*/  FUNC0 (char*,uintptr_t,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	char *name;
	uintptr_t addr;
	int i;

	/* Good for up to 256 CPUs */
	for(i=0; i < 256;  i++) {
		if ((name = FUNC1(20)) == NULL)
			break;
		(void) FUNC2(name, "cpu[%d]", i);
		addr = 0x01000000 + (i << 16); 
		FUNC0(name, addr, sizeof (uintptr_t));
	}
}