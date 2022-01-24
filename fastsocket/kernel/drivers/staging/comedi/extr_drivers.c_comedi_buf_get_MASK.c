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
struct comedi_async {scalar_t__ buf_read_ptr; scalar_t__ prealloc_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_async*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_async*,int) ; 
 unsigned int FUNC2 (struct comedi_async*) ; 

int FUNC3(struct comedi_async *async, short *x)
{
	unsigned int n = FUNC2(async);

	if (n < sizeof(short))
		return 0;
	FUNC0(async, sizeof(short));
	*x = *(short *)(async->prealloc_buf + async->buf_read_ptr);
	FUNC1(async, sizeof(short));
	return 1;
}