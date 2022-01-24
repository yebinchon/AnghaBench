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
struct sock {int sk_state; int /*<<< orphan*/  sk_socket; } ;
struct rfcomm_dlc {int dummy; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
#define  BT_CONFIG 132 
#define  BT_CONNECT 131 
#define  BT_CONNECT2 130 
#define  BT_CONNECTED 129 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int /*<<< orphan*/ ) ; 
#define  BT_LISTEN 128 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct rfcomm_dlc *d = FUNC2(sk)->dlc;

	FUNC0("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

	switch (sk->sk_state) {
	case BT_LISTEN:
		FUNC3(sk);
		break;

	case BT_CONNECT:
	case BT_CONNECT2:
	case BT_CONFIG:
	case BT_CONNECTED:
		FUNC1(d, 0);

	default:
		FUNC4(sk, SOCK_ZAPPED);
		break;
	}
}