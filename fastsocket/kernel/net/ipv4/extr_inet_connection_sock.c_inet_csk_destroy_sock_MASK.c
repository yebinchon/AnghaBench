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
struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_6__ {int /*<<< orphan*/  icsk_bind_hash; } ;
struct TYPE_5__ {scalar_t__ num; } ;
struct TYPE_4__ {int /*<<< orphan*/  orphan_count; int /*<<< orphan*/  (* destroy ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct sock*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

void FUNC11(struct sock *sk)
{
	FUNC0(sk->sk_state != TCP_CLOSE);
	FUNC0(!FUNC7(sk, SOCK_DEAD));

	/* It cannot be in hash table! */
	FUNC0(!FUNC6(sk));

	/* If it has not 0 inet_sk(sk)->num, it must be bound */
	FUNC0(FUNC2(sk)->num && !FUNC1(sk)->icsk_bind_hash);

	sk->sk_prot->destroy(sk);

	FUNC5(sk);

	FUNC10(sk);

	FUNC4(sk);

	FUNC3(sk->sk_prot->orphan_count);
	FUNC8(sk);
}