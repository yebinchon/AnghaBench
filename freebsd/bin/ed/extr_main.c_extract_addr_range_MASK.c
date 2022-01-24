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
 long ERR ; 
 int addr_cnt ; 
 long current_addr ; 
 long first_addr ; 
 char* ibufp ; 
 int FUNC0 (int,int) ; 
 long FUNC1 () ; 
 long second_addr ; 

int
FUNC2(void)
{
	long addr;

	addr_cnt = 0;
	first_addr = second_addr = current_addr;
	while ((addr = FUNC1()) >= 0) {
		addr_cnt++;
		first_addr = second_addr;
		second_addr = addr;
		if (*ibufp != ',' && *ibufp != ';')
			break;
		else if (*ibufp++ == ';')
			current_addr = addr;
	}
	if ((addr_cnt = FUNC0(addr_cnt, 2)) == 1 || second_addr != addr)
		first_addr = second_addr;
	return (addr == ERR) ? ERR : 0;
}