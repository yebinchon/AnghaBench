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
struct nsproxy {int /*<<< orphan*/  net_ns; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nsproxy* FUNC5 (struct task_struct*) ; 

struct net *FUNC6(pid_t pid)
{
	struct task_struct *tsk;
	struct net *net;

	/* Lookup the network namespace */
	net = FUNC0(-ESRCH);
	FUNC3();
	tsk = FUNC1(pid);
	if (tsk) {
		struct nsproxy *nsproxy;
		nsproxy = FUNC5(tsk);
		if (nsproxy)
			net = FUNC2(nsproxy->net_ns);
	}
	FUNC4();
	return net;
}