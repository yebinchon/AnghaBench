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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct pep_sock {int /*<<< orphan*/  hlist; struct sock* listener; int /*<<< orphan*/  ackq; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 struct sock* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,struct sk_buff*) ; 
 struct pep_sock* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC13(struct sock *sk, int flags, int *errp)
{
	struct pep_sock *pn = FUNC4(sk);
	struct sock *newsk = NULL;
	struct sk_buff *oskb;
	int err;

	FUNC2(sk);
	err = FUNC5(sk, flags & O_NONBLOCK);
	if (err)
		goto out;

	newsk = FUNC0(&pn->ackq);

	oskb = FUNC10(&newsk->sk_receive_queue);
	err = FUNC3(newsk, oskb);
	if (err) {
		FUNC11(&newsk->sk_receive_queue, oskb);
		newsk = NULL;
		goto out;
	}

	FUNC12(sk);
	FUNC4(newsk)->listener = sk;

	FUNC12(newsk);
	FUNC9(newsk);
	FUNC7(sk);
	FUNC8(newsk, &pn->hlist);
	FUNC1(newsk);

out:
	FUNC6(sk);
	*errp = err;
	return newsk;
}