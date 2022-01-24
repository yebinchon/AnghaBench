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
struct sk_filter {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct sk_filter*) ; 
 int /*<<< orphan*/  sk_filter_rcu_release ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct sk_filter *fp)
{
	unsigned int size = FUNC2(fp);

	FUNC0(size, &sk->sk_omem_alloc);
	FUNC1(&fp->rcu, sk_filter_rcu_release);
}