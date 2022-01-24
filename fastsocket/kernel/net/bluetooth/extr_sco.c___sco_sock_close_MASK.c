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
struct sock {int sk_state; int /*<<< orphan*/  sk_socket; } ;

/* Variables and functions */
#define  BT_CONFIG 132 
#define  BT_CONNECT 131 
#define  BT_CONNECTED 130 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int /*<<< orphan*/ ) ; 
#define  BT_DISCONN 129 
#define  BT_LISTEN 128 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	FUNC0("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

	switch (sk->sk_state) {
	case BT_LISTEN:
		FUNC2(sk);
		break;

	case BT_CONNECTED:
	case BT_CONFIG:
	case BT_CONNECT:
	case BT_DISCONN:
		FUNC1(sk, ECONNRESET);
		break;

	default:
		FUNC3(sk, SOCK_ZAPPED);
		break;
	}
}