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
struct task_struct {int dummy; } ;
struct rlimit {int dummy; } ;
struct TYPE_2__ {int (* task_setrlimit ) (struct task_struct*,unsigned int,struct rlimit*) ;} ;

/* Variables and functions */
 TYPE_1__* security_ops ; 
 int FUNC0 (struct task_struct*,unsigned int,struct rlimit*) ; 

int FUNC1(struct task_struct *p, unsigned int resource,
		struct rlimit *new_rlim)
{
	return security_ops->task_setrlimit(p, resource, new_rlim);
}