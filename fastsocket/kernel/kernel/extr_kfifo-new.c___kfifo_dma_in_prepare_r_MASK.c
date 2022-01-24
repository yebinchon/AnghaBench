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
struct __kfifo {scalar_t__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (unsigned int,size_t) ; 
 unsigned int FUNC2 (struct __kfifo*) ; 
 unsigned int FUNC3 (struct __kfifo*,struct scatterlist*,int,unsigned int,scalar_t__) ; 

unsigned int FUNC4(struct __kfifo *fifo,
	struct scatterlist *sgl, int nents, unsigned int len, size_t recsize)
{
	if (!nents)
		FUNC0();

	len = FUNC1(len, recsize);

	if (len + recsize > FUNC2(fifo))
		return 0;

	return FUNC3(fifo, sgl, nents, len, fifo->in + recsize);
}