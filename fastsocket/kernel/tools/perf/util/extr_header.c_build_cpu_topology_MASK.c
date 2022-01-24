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
typedef  int u32 ;
struct cpu_topo {void* thread_siblings; void* core_siblings; } ;

/* Variables and functions */
 long UINT_MAX ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int FUNC0 (struct cpu_topo*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_topo*) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cpu_topo *FUNC4(void)
{
	struct cpu_topo *tp;
	void *addr;
	u32 nr, i;
	size_t sz;
	long ncpus;
	int ret = -1;

	ncpus = FUNC3(_SC_NPROCESSORS_CONF);
	if (ncpus < 0)
		return NULL;

	nr = (u32)(ncpus & UINT_MAX);

	sz = nr * sizeof(char *);

	addr = FUNC1(1, sizeof(*tp) + 2 * sz);
	if (!addr)
		return NULL;

	tp = addr;

	addr += sizeof(*tp);
	tp->core_siblings = addr;
	addr += sz;
	tp->thread_siblings = addr;

	for (i = 0; i < nr; i++) {
		ret = FUNC0(tp, i);
		if (ret < 0)
			break;
	}
	if (ret) {
		FUNC2(tp);
		tp = NULL;
	}
	return tp;
}