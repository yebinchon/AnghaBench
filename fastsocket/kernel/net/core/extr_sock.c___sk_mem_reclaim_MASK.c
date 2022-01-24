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
struct sock {int sk_forward_alloc; struct proto* sk_prot; } ;
struct proto {scalar_t__* sysctl_mem; scalar_t__* memory_pressure; int /*<<< orphan*/  memory_allocated; } ;

/* Variables and functions */
 int SK_MEM_QUANTUM ; 
 int SK_MEM_QUANTUM_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(struct sock *sk)
{
	struct proto *prot = sk->sk_prot;

	FUNC1(sk->sk_forward_alloc >> SK_MEM_QUANTUM_SHIFT,
		   prot->memory_allocated);
	sk->sk_forward_alloc &= SK_MEM_QUANTUM - 1;

	if (prot->memory_pressure && *prot->memory_pressure &&
	    (FUNC0(prot->memory_allocated) < prot->sysctl_mem[0]))
		*prot->memory_pressure = 0;
}