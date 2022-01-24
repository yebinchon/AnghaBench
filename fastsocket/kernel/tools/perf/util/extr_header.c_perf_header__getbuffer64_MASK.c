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
struct perf_header {scalar_t__ needs_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 scalar_t__ FUNC1 (int,void*,size_t) ; 

__attribute__((used)) static int FUNC2(struct perf_header *header,
				    int fd, void *buf, size_t size)
{
	if (FUNC1(fd, buf, size) <= 0)
		return -1;

	if (header->needs_swap)
		FUNC0(buf, size);

	return 0;
}