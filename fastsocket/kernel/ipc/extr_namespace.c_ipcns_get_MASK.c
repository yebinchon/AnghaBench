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
struct nsproxy {int /*<<< orphan*/  ipc_ns; } ;
typedef  void ipc_namespace ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct nsproxy* FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void *FUNC4(struct task_struct *task)
{
	struct ipc_namespace *ns = NULL;
	struct nsproxy *nsproxy;

	FUNC1();
	nsproxy = FUNC3(task);
	if (nsproxy)
		ns = FUNC0(nsproxy->ipc_ns);
	FUNC2();

	return ns;
}