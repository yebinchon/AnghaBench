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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rose_sock {int condition; TYPE_1__* neighbour; int /*<<< orphan*/  state; int /*<<< orphan*/  vl; int /*<<< orphan*/  vs; int /*<<< orphan*/  vr; int /*<<< orphan*/  va; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int ROSE_CLEAR_CONFIRMATION ; 
#define  ROSE_CLEAR_REQUEST 130 
#define  ROSE_RESET_CONFIRMATION 129 
#define  ROSE_RESET_REQUEST 128 
 int /*<<< orphan*/  ROSE_STATE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct rose_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb, int frametype)
{
	struct rose_sock *rose = FUNC2(sk);

	switch (frametype) {
	case ROSE_RESET_REQUEST:
		FUNC5(sk, ROSE_RESET_CONFIRMATION);
	case ROSE_RESET_CONFIRMATION:
		FUNC4(sk);
		FUNC3(sk);
		rose->condition = 0x00;
		rose->va        = 0;
		rose->vr        = 0;
		rose->vs        = 0;
		rose->vl        = 0;
		rose->state     = ROSE_STATE_3;
		FUNC1(sk);
		break;

	case ROSE_CLEAR_REQUEST:
		FUNC5(sk, ROSE_CLEAR_CONFIRMATION);
		FUNC0(sk, 0, skb->data[3], skb->data[4]);
		rose->neighbour->use--;
		break;

	default:
		break;
	}

	return 0;
}