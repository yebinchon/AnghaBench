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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_filter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_filter*) ; 

int FUNC5(struct sock *sk)
{
	int ret = -ENOENT;
	struct sk_filter *filter;

	FUNC2();
	filter = FUNC1(sk->sk_filter);
	if (filter) {
		FUNC0(sk->sk_filter, NULL);
		FUNC4(sk, filter);
		ret = 0;
	}
	FUNC3();
	return ret;
}