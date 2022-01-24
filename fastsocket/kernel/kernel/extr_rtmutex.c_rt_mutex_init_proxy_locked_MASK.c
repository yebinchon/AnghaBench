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
struct task_struct {int dummy; } ;
struct rt_mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_mutex*,struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC4(struct rt_mutex *lock,
				struct task_struct *proxy_owner)
{
	FUNC0(lock, NULL);
	FUNC1(lock, proxy_owner);
	FUNC3(lock, proxy_owner, 0);
	FUNC2(lock, proxy_owner);
}