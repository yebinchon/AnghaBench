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
struct scatterlist {int dummy; } ;
struct __kfifo {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct __kfifo*) ; 
 unsigned int FUNC1 (struct __kfifo*,struct scatterlist*,int,unsigned int,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct __kfifo *fifo,
		struct scatterlist *sgl, int nents, unsigned int len)
{
	unsigned int l;

	l = FUNC0(fifo);
	if (len > l)
		len = l;

	return FUNC1(fifo, sgl, nents, len, fifo->in);
}