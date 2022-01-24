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
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 

void *
FUNC3(void *buf,
	size_t esize, size_t *ptr, size_t *len, size_t extra)
{
	size_t nlen;
	void *nbuf;

	if (*len - *ptr >= extra) {
		return buf;
	}
	nlen = (*len << 1);
	if (nlen - *ptr < extra) {
		nlen = extra + *ptr;
		if (nlen < 8) {
			nlen = 8;
		}
	}
	nbuf = FUNC2(nlen * esize);
	if (buf != NULL) {
		FUNC0(nbuf, buf, *len * esize);
		FUNC1(buf);
	}
	*len = nlen;
	return nbuf;
}