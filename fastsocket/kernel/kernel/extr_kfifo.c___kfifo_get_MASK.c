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
struct kfifo {int in; int out; int size; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,scalar_t__,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

unsigned int FUNC4(struct kfifo *fifo,
			 unsigned char *buffer, unsigned int len)
{
	unsigned int l;

	len = FUNC1(len, fifo->in - fifo->out);

	/*
	 * Ensure that we sample the fifo->in index -before- we
	 * start removing bytes from the kfifo.
	 */

	FUNC3();

	/* first get the data from fifo->out until the end of the buffer */
	l = FUNC1(len, fifo->size - (fifo->out & (fifo->size - 1)));
	FUNC0(buffer, fifo->buffer + (fifo->out & (fifo->size - 1)), l);

	/* then get the rest (if any) from the beginning of the buffer */
	FUNC0(buffer + l, fifo->buffer, len - l);

	/*
	 * Ensure that we remove the bytes from the kfifo -before-
	 * we update the fifo->out index.
	 */

	FUNC2();

	fifo->out += len;

	return len;
}