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
struct __kfifo {int mask; unsigned int esize; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct __kfifo *fifo, void *dst,
		unsigned int len, unsigned int off)
{
	unsigned int size = fifo->mask + 1;
	unsigned int esize = fifo->esize;
	unsigned int l;

	off &= fifo->mask;
	if (esize != 1) {
		off *= esize;
		size *= esize;
		len *= esize;
	}
	l = FUNC1(len, size - off);

	FUNC0(dst, fifo->data + off, l);
	FUNC0(dst + l, fifo->data, len - l);
	/*
	 * make sure that the data is copied before
	 * incrementing the fifo->out index counter
	 */
	FUNC2();
}