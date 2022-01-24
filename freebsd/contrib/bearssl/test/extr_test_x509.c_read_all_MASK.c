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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 

__attribute__((used)) static unsigned char *
FUNC4(FILE *f, size_t *len)
{
	unsigned char *buf;
	size_t ptr, blen;

	blen = 1024;
	buf = FUNC3(blen);
	ptr = 0;
	for (;;) {
		size_t rlen;

		if (ptr == blen) {
			unsigned char *buf2;

			blen <<= 1;
			buf2 = FUNC3(blen);
			FUNC1(buf2, buf, ptr);
			FUNC2(buf);
			buf = buf2;
		}
		rlen = FUNC0(buf + ptr, 1, blen - ptr, f);
		if (rlen == 0) {
			unsigned char *buf3;

			buf3 = FUNC3(ptr);
			FUNC1(buf3, buf, ptr);
			FUNC2(buf);
			*len = ptr;
			return buf3;
		}
		ptr += rlen;
	}
}