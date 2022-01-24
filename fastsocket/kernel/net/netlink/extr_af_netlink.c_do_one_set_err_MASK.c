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
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct netlink_sock {scalar_t__ pid; int ngroups; int /*<<< orphan*/  groups; } ;
struct netlink_set_err_data {scalar_t__ pid; int group; int /*<<< orphan*/  code; struct sock* exclude_sk; } ;

/* Variables and functions */
 struct netlink_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk,
				 struct netlink_set_err_data *p)
{
	struct netlink_sock *nlk = FUNC0(sk);

	if (sk == p->exclude_sk)
		goto out;

	if (FUNC1(sk) != FUNC1(p->exclude_sk))
		goto out;

	if (nlk->pid == p->pid || p->group - 1 >= nlk->ngroups ||
	    !FUNC3(p->group - 1, nlk->groups))
		goto out;

	sk->sk_err = p->code;
	sk->sk_error_report(sk);
out:
	return 0;
}