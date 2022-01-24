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
typedef  scalar_t__ uint64_t ;
typedef  int boolean_t ;

/* Variables and functions */

__attribute__((used)) static boolean_t
FUNC0(void *buf, uint64_t size, uint64_t value)
{
	uint64_t *ip = buf;
	uint64_t *ip_end = (uint64_t *)((uintptr_t)buf + (uintptr_t)size);
	uint64_t diff = 0;

	while (ip < ip_end)
		diff |= (value - *ip++);

	return (diff == 0);
}