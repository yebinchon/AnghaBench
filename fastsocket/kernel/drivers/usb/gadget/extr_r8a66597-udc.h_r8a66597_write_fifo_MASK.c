#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;

/* Variables and functions */
 int BIGEND ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char*,int) ; 
 int FUNC3 (struct r8a66597*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct r8a66597 *r8a66597,
				       unsigned long offset,
				       unsigned char *buf,
				       int len)
{
	unsigned long fifoaddr = r8a66597->reg + offset;
	int adj = 0;
	int i;

	if (r8a66597->pdata->on_chip) {
		/* 32-bit access only if buf is 32-bit aligned */
		if (len >= 4 && !((unsigned long)buf & 0x03)) {
			FUNC1(fifoaddr, buf, len / 4);
			buf += len & ~0x03;
			len &= 0x03;
		}
	} else {
		/* 16-bit access only if buf is 16-bit aligned */
		if (len >= 2 && !((unsigned long)buf & 0x01)) {
			FUNC2(fifoaddr, buf, len / 2);
			buf += len & ~0x01;
			len &= 0x01;
		}
	}

	/* adjust fifo address in the little endian case */
	if (!(FUNC3(r8a66597, CFIFOSEL) & BIGEND)) {
		if (r8a66597->pdata->on_chip)
			adj = 0x03; /* 32-bit wide */
		else
			adj = 0x01; /* 16-bit wide */
	}

	for (i = 0; i < len; i++)
		FUNC0(buf[i], fifoaddr + adj - (i & adj));
}