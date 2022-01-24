#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int /*<<< orphan*/  bind_bucket_cachep; int /*<<< orphan*/  bsockets; struct inet_bind_hashbucket* bhash; int /*<<< orphan*/  bhash_size; } ;
struct inet_bind_hashbucket {int /*<<< orphan*/  lock; } ;
struct inet_bind_bucket {int /*<<< orphan*/  num_owners; } ;
struct TYPE_8__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_7__ {scalar_t__ num; } ;
struct TYPE_5__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_6__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inet_bind_bucket*) ; 
 TYPE_4__* FUNC4 (struct sock*) ; 
 TYPE_3__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;
	const int bhash = FUNC2(FUNC6(sk), FUNC5(sk)->num,
			hashinfo->bhash_size);
	struct inet_bind_hashbucket *head = &hashinfo->bhash[bhash];
	struct inet_bind_bucket *tb;

	FUNC1(&hashinfo->bsockets);

	FUNC7(&head->lock);
	tb = FUNC4(sk)->icsk_bind_hash;
	FUNC0(sk);
	tb->num_owners--;
	FUNC4(sk)->icsk_bind_hash = NULL;
	FUNC5(sk)->num = 0;
	FUNC3(hashinfo->bind_bucket_cachep, tb);
	FUNC8(&head->lock);
}