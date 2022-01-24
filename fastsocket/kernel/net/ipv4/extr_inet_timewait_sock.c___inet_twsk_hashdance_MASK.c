#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_hash; } ;
struct inet_timewait_sock {int /*<<< orphan*/  tw_refcnt; TYPE_1__* tw_tb; } ;
struct inet_sock {int /*<<< orphan*/  num; } ;
struct inet_hashinfo {int /*<<< orphan*/  bhash_size; struct inet_bind_hashbucket* bhash; } ;
struct inet_ehash_bucket {int /*<<< orphan*/  twchain; } ;
struct inet_connection_sock {TYPE_1__* icsk_bind_hash; } ;
struct inet_bind_hashbucket {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/  owners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 struct inet_ehash_bucket* FUNC5 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct inet_hashinfo*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct inet_timewait_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inet_timewait_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inet_timewait_sock*) ; 

void FUNC15(struct inet_timewait_sock *tw, struct sock *sk,
			   struct inet_hashinfo *hashinfo)
{
	const struct inet_sock *inet = FUNC7(sk);
	const struct inet_connection_sock *icsk = FUNC4(sk);
	struct inet_ehash_bucket *ehead = FUNC5(hashinfo, sk->sk_hash);
	spinlock_t *lock = FUNC6(hashinfo, sk->sk_hash);
	struct inet_bind_hashbucket *bhead;
	/* Step 1: Put TW into bind hash. Original socket stays there too.
	   Note, that any socket with inet->num != 0 MUST be bound in
	   binding cache, even if it is closed.
	 */
	bhead = &hashinfo->bhash[FUNC3(FUNC14(tw), inet->num,
			hashinfo->bhash_size)];
	FUNC12(&bhead->lock);
	tw->tw_tb = icsk->icsk_bind_hash;
	FUNC0(!icsk->icsk_bind_hash);
	FUNC8(tw, &tw->tw_tb->owners);
	FUNC2(&tw->tw_refcnt);
	FUNC13(&bhead->lock);

	FUNC12(lock);

	/*
	 * Step 2: Hash TW into TIMEWAIT chain.
	 * Should be done before removing sk from established chain
	 * because readers are lockless and search established first.
	 */
	FUNC2(&tw->tw_refcnt);
	FUNC9(tw, &ehead->twchain);

	/* Step 3: Remove SK from established hash. */
	if (FUNC1(sk))
		FUNC11(FUNC10(sk), sk->sk_prot, -1);

	FUNC13(lock);
}