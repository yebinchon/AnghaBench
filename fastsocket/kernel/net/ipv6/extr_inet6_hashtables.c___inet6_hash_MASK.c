#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; unsigned int sk_hash; TYPE_2__* sk_prot; } ;
struct hlist_nulls_head {int dummy; } ;
struct inet_listen_hashbucket {int /*<<< orphan*/  lock; struct hlist_nulls_head head; } ;
struct inet_hashinfo {struct inet_listen_hashbucket* listening_hash; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_6__ {struct hlist_nulls_head chain; } ;
struct TYPE_4__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_5__ {TYPE_1__ h; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct hlist_nulls_head*) ; 
 unsigned int FUNC2 (struct sock*) ; 
 TYPE_3__* FUNC3 (struct inet_hashinfo*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (struct inet_hashinfo*,unsigned int) ; 
 size_t FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct sock *sk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;

	FUNC0(!FUNC6(sk));

	if (sk->sk_state == TCP_LISTEN) {
		struct inet_listen_hashbucket *ilb;

		ilb = &hashinfo->listening_hash[FUNC5(sk)];
		FUNC9(&ilb->lock);
		FUNC1(sk, &ilb->head);
		FUNC10(&ilb->lock);
	} else {
		unsigned int hash;
		struct hlist_nulls_head *list;
		spinlock_t *lock;

		sk->sk_hash = hash = FUNC2(sk);
		list = &FUNC3(hashinfo, hash)->chain;
		lock = FUNC4(hashinfo, hash);
		FUNC9(lock);
		FUNC1(sk, list);
		FUNC10(lock);
	}

	FUNC8(FUNC7(sk), sk->sk_prot, 1);
}