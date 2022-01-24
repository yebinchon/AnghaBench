#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int sk_userlocks; TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int /*<<< orphan*/  icsk_bind_hash; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* unhash ) (struct sock*) ;} ;

/* Variables and functions */
 int SOCK_BINDPORT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TCP_CLOSE 129 
 int TCP_CLOSE_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TCP_ESTABLISHED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  TCP_MIB_ESTABRESETS ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/ * statename ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

void FUNC7(struct sock *sk, int state)
{
	int oldstate = sk->sk_state;

	switch (state) {
	case TCP_ESTABLISHED:
		if (oldstate != TCP_ESTABLISHED)
			FUNC2(FUNC5(sk), TCP_MIB_CURRESTAB);
		break;

	case TCP_CLOSE:
		if (oldstate == TCP_CLOSE_WAIT || oldstate == TCP_ESTABLISHED)
			FUNC2(FUNC5(sk), TCP_MIB_ESTABRESETS);

		sk->sk_prot->unhash(sk);
		if (FUNC3(sk)->icsk_bind_hash &&
		    !(sk->sk_userlocks & SOCK_BINDPORT_LOCK))
			FUNC4(sk);
		/* fall through */
	default:
		if (oldstate == TCP_ESTABLISHED)
			FUNC1(FUNC5(sk), TCP_MIB_CURRESTAB);
	}

	/* Change state AFTER socket is unhashed to avoid closed
	 * socket sitting in hash tables.
	 */
	sk->sk_state = state;

#ifdef STATE_TRACE
	SOCK_DEBUG(sk, "TCP sk=%p, State %s -> %s\n", sk, statename[oldstate], statename[state]);
#endif
}