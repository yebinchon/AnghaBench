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
typedef  char u32 ;
struct perf_header {scalar_t__ needs_swap; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 char FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char) ; 
 scalar_t__ FUNC3 (int,char*,char) ; 

__attribute__((used)) static char *FUNC4(int fd, struct perf_header *ph)
{
	ssize_t sz, ret;
	u32 len;
	char *buf;

	sz = FUNC3(fd, &len, sizeof(len));
	if (sz < (ssize_t)sizeof(len))
		return NULL;

	if (ph->needs_swap)
		len = FUNC0(len);

	buf = FUNC2(len);
	if (!buf)
		return NULL;

	ret = FUNC3(fd, buf, len);
	if (ret == (ssize_t)len) {
		/*
		 * strings are padded by zeroes
		 * thus the actual strlen of buf
		 * may be less than len
		 */
		return buf;
	}

	FUNC1(buf);
	return NULL;
}