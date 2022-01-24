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
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 scalar_t__ DISABLE_LISTEN_SPAWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 scalar_t__ ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 scalar_t__ enable_listen_spawn ; 
 int fastsocket_spawn_cpu ; 
 int /*<<< orphan*/  fastsocket_spawn_cpuset ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(int rcpu)
{
	int ccpu, ncpu, cpu;
	int tcpu = -1;
	cpumask_var_t omask;
	//struct socket *sock;

	if (enable_listen_spawn == DISABLE_LISTEN_SPAWN) {
		FUNC1(ERR, "Module para disable listen-spawn feature\n");
		return -EPERM;
	}

	if ((rcpu >= 0) && (rcpu > FUNC8())) {
		FUNC1(ERR, "Requested CPU %d is greater than system available CPU core %d\n", rcpu, FUNC8());
		return -EINVAL;
	}

	/* Respect the choice of user */

	if (rcpu >= 0)
		return rcpu;

	if (!FUNC2(&omask, GFP_KERNEL))
		return -ENOMEM;

	FUNC9(current->pid, omask);
	ccpu = FUNC5(omask);
	ncpu = FUNC6(ccpu, omask);
	FUNC7(omask);

	FUNC0(DEBUG, "Current process ccpu(%d) ncpu(%d)\n", ccpu, ncpu);

	if (ccpu >= nr_cpu_ids) {
		FUNC0(DEBUG, "Current process affinity is messed up\n");
		return -EINVAL;
	}

	if (ncpu >= nr_cpu_ids) {
		FUNC0(INFO, "Current process already binds to CPU %d\n", ccpu);
		return ccpu;
	}

	if (enable_listen_spawn != ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY) {
		FUNC1(ERR, "Module para disable autoset affinity for listen-spawn\n");
		return -EPERM;
	}

	/* Choose a unused CPU core to bind this process */	

	for (cpu = fastsocket_spawn_cpu; cpu < FUNC8(); cpu++) {
		if (!FUNC3(cpu, fastsocket_spawn_cpuset)) {
			FUNC0(INFO, "CPU %d is available for process affinity\n", cpu);
			tcpu = cpu;
			break;
		}
	}

	if (tcpu >= 0) {
		FUNC4(cpu, fastsocket_spawn_cpuset);
		fastsocket_spawn_cpu++;
	} else {
		FUNC1(ERR, "Process number is more than CPU number\n");
		return -EINVAL;
	}

	FUNC0(INFO, "Target process affinity: %d\n", tcpu);

	return tcpu;
}