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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  start; scalar_t__ tail; scalar_t__ head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tcp_probe ; 

__attribute__((used)) static int FUNC3(struct inode * inode, struct file * file)
{
	/* Reset (empty) log */
	FUNC1(&tcp_probe.lock);
	tcp_probe.head = tcp_probe.tail = 0;
	tcp_probe.start = FUNC0();
	FUNC2(&tcp_probe.lock);

	return 0;
}