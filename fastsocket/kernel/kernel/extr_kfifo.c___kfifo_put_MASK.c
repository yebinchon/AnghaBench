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
struct kfifo {int size; int in; int out; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char const*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

unsigned int FUNC4(struct kfifo *fifo,
			const unsigned char *buffer, unsigned int len)
{
	unsigned int l;

	len = FUNC1(len, fifo->size - fifo->in + fifo->out);

	/*
	 * Ensure that we sample the fifo->out index -before- we
	 * start putting bytes into the kfifo.
	 */

	FUNC2();

	/* first put the data starting from fifo->in to buffer end */
	l = FUNC1(len, fifo->size - (fifo->in & (fifo->size - 1)));
	FUNC0(fifo->buffer + (fifo->in & (fifo->size - 1)), buffer, l);

	/* then put the rest (if any) at the beginning of the buffer */
	FUNC0(fifo->buffer, buffer + l, len - l);

	/*
	 * Ensure that we add the bytes to the kfifo -before-
	 * we update the fifo->in index.
	 */

	FUNC3();

	fifo->in += len;

	return len;
}