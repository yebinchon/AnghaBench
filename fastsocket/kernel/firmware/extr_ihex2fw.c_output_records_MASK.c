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
typedef  int uint16_t ;
struct ihex_binrec {int len; unsigned char addr; struct ihex_binrec* next; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 int FUNC1 (int) ; 
 struct ihex_binrec* records ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(int outfd)
{
	unsigned char zeroes[6] = {0, 0, 0, 0, 0, 0};
	struct ihex_binrec *p = records;

	while (p) {
		uint16_t writelen = (p->len + 9) & ~3;

		p->addr = FUNC0(p->addr);
		p->len = FUNC1(p->len);
		FUNC2(outfd, &p->addr, writelen);
		p = p->next;
	}
	/* EOF record is zero length, since we don't bother to represent
	   the type field in the binary version */
	FUNC2(outfd, zeroes, 6);
	return 0;
}