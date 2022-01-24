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
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned int sysctl_optmem_max ; 

void *FUNC4(struct sock *sk, int size, gfp_t priority)
{
	if ((unsigned)size <= sysctl_optmem_max &&
	    FUNC1(&sk->sk_omem_alloc) + size < sysctl_optmem_max) {
		void *mem;
		/* First do the add, to avoid the race if kmalloc
		 * might sleep.
		 */
		FUNC0(size, &sk->sk_omem_alloc);
		mem = FUNC3(size, priority);
		if (mem)
			return mem;
		FUNC2(size, &sk->sk_omem_alloc);
	}
	return NULL;
}