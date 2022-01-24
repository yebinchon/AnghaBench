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
 size_t FUNC0 (char*,size_t,char*,unsigned char const,unsigned char const,...) ; 

size_t FUNC1(char *buf, size_t buf_size, const unsigned char *addr,
			int type)
{
	size_t result;
	if (type)
		result = FUNC0(buf, buf_size,
				  "%02x:%02x:%02x:%02x:%02x:%02x",
				  addr[0], addr[1], addr[2],
				  addr[3], addr[4], addr[5]);
	else
		result = FUNC0(buf, buf_size, "%02x:%02x",
				  addr[1], addr[0]);
	return result;
}