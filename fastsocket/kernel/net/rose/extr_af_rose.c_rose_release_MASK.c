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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;
struct rose_sock {int state; TYPE_1__* neighbour; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROSE_CLEAR_REQUEST ; 
#define  ROSE_STATE_0 133 
#define  ROSE_STATE_1 132 
#define  ROSE_STATE_2 131 
#define  ROSE_STATE_3 130 
#define  ROSE_STATE_4 129 
#define  ROSE_STATE_5 128 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int,int) ; 
 struct rose_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 

__attribute__((used)) static int FUNC14(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct rose_sock *rose;

	if (sk == NULL) return 0;

	FUNC9(sk);
	FUNC10(sk);
	FUNC0(sk);
	rose = FUNC5(sk);

	switch (rose->state) {
	case ROSE_STATE_0:
		FUNC1(sk);
		FUNC4(sk, 0, -1, -1);
		FUNC0(sk);
		FUNC3(sk);
		break;

	case ROSE_STATE_2:
		rose->neighbour->use--;
		FUNC1(sk);
		FUNC4(sk, 0, -1, -1);
		FUNC0(sk);
		FUNC3(sk);
		break;

	case ROSE_STATE_1:
	case ROSE_STATE_3:
	case ROSE_STATE_4:
	case ROSE_STATE_5:
		FUNC2(sk);
		FUNC7(sk);
		FUNC8(sk, ROSE_CLEAR_REQUEST);
		FUNC6(sk);
		rose->state  = ROSE_STATE_2;
		sk->sk_state    = TCP_CLOSE;
		sk->sk_shutdown |= SEND_SHUTDOWN;
		sk->sk_state_change(sk);
		FUNC12(sk, SOCK_DEAD);
		FUNC12(sk, SOCK_DESTROY);
		break;

	default:
		break;
	}

	sock->sk = NULL;
	FUNC1(sk);
	FUNC11(sk);

	return 0;
}