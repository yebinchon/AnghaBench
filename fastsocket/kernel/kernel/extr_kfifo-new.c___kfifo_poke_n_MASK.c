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
struct __kfifo {unsigned int mask; unsigned char* data; scalar_t__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct __kfifo *fifo, unsigned int n, size_t recsize)
{
	unsigned int mask = fifo->mask;
	unsigned char *data = fifo->data;

	FUNC0(data, fifo->in, mask, n);

	if (recsize > 1)
		FUNC0(data, fifo->in + 1, mask, n >> 8);
}