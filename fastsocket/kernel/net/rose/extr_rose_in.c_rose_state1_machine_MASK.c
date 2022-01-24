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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rose_sock {int condition; TYPE_1__* neighbour; int /*<<< orphan*/  state; int /*<<< orphan*/  vl; int /*<<< orphan*/  vr; int /*<<< orphan*/  va; int /*<<< orphan*/  vs; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
#define  ROSE_CALL_ACCEPTED 129 
 int /*<<< orphan*/  ROSE_CLEAR_CONFIRMATION ; 
#define  ROSE_CLEAR_REQUEST 128 
 int /*<<< orphan*/  ROSE_STATE_3 ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rose_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb, int frametype)
{
	struct rose_sock *rose = FUNC1(sk);

	switch (frametype) {
	case ROSE_CALL_ACCEPTED:
		FUNC3(sk);
		FUNC2(sk);
		rose->condition = 0x00;
		rose->vs        = 0;
		rose->va        = 0;
		rose->vr        = 0;
		rose->vl        = 0;
		rose->state     = ROSE_STATE_3;
		sk->sk_state	= TCP_ESTABLISHED;
		if (!FUNC5(sk, SOCK_DEAD))
			sk->sk_state_change(sk);
		break;

	case ROSE_CLEAR_REQUEST:
		FUNC4(sk, ROSE_CLEAR_CONFIRMATION);
		FUNC0(sk, ECONNREFUSED, skb->data[3], skb->data[4]);
		rose->neighbour->use--;
		break;

	default:
		break;
	}

	return 0;
}