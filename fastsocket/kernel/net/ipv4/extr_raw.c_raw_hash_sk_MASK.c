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
struct sock {TYPE_2__* sk_prot; } ;
struct raw_hashinfo {int /*<<< orphan*/  lock; struct hlist_head* ht; } ;
struct hlist_head {int dummy; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_4__ {struct raw_hashinfo* raw_hash; } ;
struct TYPE_5__ {TYPE_1__ h; } ;

/* Variables and functions */
 int RAW_HTABLE_SIZE ; 
 TYPE_3__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sock *sk)
{
	struct raw_hashinfo *h = sk->sk_prot->h.raw_hash;
	struct hlist_head *head;

	head = &h->ht[FUNC0(sk)->num & (RAW_HTABLE_SIZE - 1)];

	FUNC4(&h->lock);
	FUNC1(sk, head);
	FUNC3(FUNC2(sk), sk->sk_prot, 1);
	FUNC5(&h->lock);
}