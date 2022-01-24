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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk, unsigned int size)
{
	if (FUNC0(&sk->sk_rmem_alloc) > sk->sk_rcvbuf ||
	    !FUNC1(sk, size)) {

		if (FUNC3(sk) < 0)
			return -1;

		if (!FUNC1(sk, size)) {
			if (!FUNC2(sk))
				return -1;

			if (!FUNC1(sk, size))
				return -1;
		}
	}
	return 0;
}