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
 scalar_t__ FUNC0 (char*,size_t,char*,unsigned char,char) ; 

__attribute__((used)) static
size_t FUNC1(char *addr_str, size_t addr_str_size,
			   unsigned char *addr, size_t addr_len)
{
	unsigned cnt, total;
	for (total = cnt = 0; cnt < addr_len; cnt++)
		total += FUNC0(addr_str + total, addr_str_size - total,
				   "%02x%c", addr[cnt],
				   cnt == addr_len - 1 ? '\0' : ':');
	return total;
}