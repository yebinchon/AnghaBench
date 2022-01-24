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
struct sock {int dummy; } ;
struct proto {struct kmem_cache* slab; struct module* owner; } ;
struct module {int dummy; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct proto *prot, struct sock *sk)
{
	struct kmem_cache *slab;
	struct module *owner;

	owner = prot->owner;
	slab = prot->slab;

	FUNC3(sk);
	if (slab != NULL)
		FUNC1(slab, sk);
	else
		FUNC0(sk);
	FUNC2(owner);
}