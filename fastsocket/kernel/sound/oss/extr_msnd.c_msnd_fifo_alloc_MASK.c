#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t n; int /*<<< orphan*/  data; scalar_t__ len; scalar_t__ head; scalar_t__ tail; } ;
typedef  TYPE_1__ msnd_fifo ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

int FUNC2(msnd_fifo *f, size_t n)
{
	FUNC0(f);
	f->data = FUNC1(n);
	f->n = n;
	f->tail = 0;
	f->head = 0;
	f->len = 0;

	if (!f->data)
		return -ENOMEM;

	return 0;
}