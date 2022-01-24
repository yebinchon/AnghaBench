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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

void *
FUNC3(size_t len)
{
	void *buf;

	if (len == 0) {
		return NULL;
	}
	buf = FUNC2(len);
	if (buf == NULL) {
#ifndef _STANDALONE
		FUNC1(stderr, "ERROR: could not allocate %lu byte(s)\n",
			(unsigned long)len);
		FUNC0(EXIT_FAILURE);
#else 
; 
#endif
	}
	return buf;
}