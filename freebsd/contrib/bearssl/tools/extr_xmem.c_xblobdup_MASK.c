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
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 
 void* FUNC1 (size_t) ; 

void *
FUNC2(const void *src, size_t len)
{
	void *buf;

	buf = FUNC1(len);
	FUNC0(buf, src, len);
	return buf;
}