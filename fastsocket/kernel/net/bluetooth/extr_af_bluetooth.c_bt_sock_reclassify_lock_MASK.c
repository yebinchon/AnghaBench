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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bt_key_strings ; 
 int /*<<< orphan*/ * bt_lock_key ; 
 int /*<<< orphan*/ * bt_slock_key ; 
 int /*<<< orphan*/ * bt_slock_key_strings ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static inline void FUNC3(struct socket *sock, int proto)
{
	struct sock *sk = sock->sk;

	if (!sk)
		return;

	FUNC0(FUNC2(sk));

	FUNC1(sk,
			bt_slock_key_strings[proto], &bt_slock_key[proto],
				bt_key_strings[proto], &bt_lock_key[proto]);
}