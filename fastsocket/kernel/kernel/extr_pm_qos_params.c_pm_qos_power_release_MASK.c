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
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	int pm_qos_class;

	pm_qos_class = (long)filp->private_data;
	FUNC1(name, "process_%d", current->pid);
	FUNC0(pm_qos_class, name);

	return 0;
}