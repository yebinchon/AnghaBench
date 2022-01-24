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
struct vhost_poll {int /*<<< orphan*/  wait; int /*<<< orphan*/  table; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {unsigned long (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned long FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void FUNC2(struct vhost_poll *poll, struct file *file)
{
	unsigned long mask;
	mask = file->f_op->poll(file, &poll->table);
	if (mask)
		FUNC1(&poll->wait, 0, 0, (void *)mask);
}