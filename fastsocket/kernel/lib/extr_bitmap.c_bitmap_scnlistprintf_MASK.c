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
 int FUNC0 (char*,unsigned int,int,int,int) ; 
 int FUNC1 (unsigned long const*,int) ; 
 int FUNC2 (unsigned long const*,int,int) ; 

int FUNC3(char *buf, unsigned int buflen,
	const unsigned long *maskp, int nmaskbits)
{
	int len = 0;
	/* current bit is 'cur', most recently seen range is [rbot, rtop] */
	int cur, rbot, rtop;

	if (buflen == 0)
		return 0;
	buf[0] = 0;

	rbot = cur = FUNC1(maskp, nmaskbits);
	while (cur < nmaskbits) {
		rtop = cur;
		cur = FUNC2(maskp, nmaskbits, cur+1);
		if (cur >= nmaskbits || cur > rtop + 1) {
			len = FUNC0(buf, buflen, rbot, rtop, len);
			rbot = cur;
		}
	}
	return len;
}