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
struct __kfifo {scalar_t__ out; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct __kfifo*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct __kfifo*,void*,unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC2(struct __kfifo *fifo,
	void *buf, unsigned int len, size_t recsize, unsigned int *n)
{
	*n = FUNC0(fifo, recsize);

	if (len > *n)
		len = *n;

	FUNC1(fifo, buf, len, fifo->out + recsize);
	return len;
}