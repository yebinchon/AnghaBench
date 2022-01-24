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
struct TYPE_2__ {int /*<<< orphan*/  cudlength; int /*<<< orphan*/  cuddata; } ;
struct x25_sock {int condition; TYPE_1__ calluserdata; int /*<<< orphan*/  vc_facil_mask; int /*<<< orphan*/  dte_facilities; int /*<<< orphan*/  facilities; int /*<<< orphan*/  state; int /*<<< orphan*/  vl; int /*<<< orphan*/  vr; int /*<<< orphan*/  va; int /*<<< orphan*/  vs; } ;
struct x25_address {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
#define  X25_CALL_ACCEPTED 129 
 int /*<<< orphan*/  X25_CLEAR_CONFIRMATION ; 
#define  X25_CLEAR_REQUEST 128 
 int /*<<< orphan*/  X25_STATE_3 ; 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct x25_address*,struct x25_address*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct x25_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_buff *skb, int frametype)
{
	struct x25_address source_addr, dest_addr;

	switch (frametype) {
		case X25_CALL_ACCEPTED: {
			struct x25_sock *x25 = FUNC7(sk);

			FUNC8(sk);
			x25->condition = 0x00;
			x25->vs        = 0;
			x25->va        = 0;
			x25->vr        = 0;
			x25->vl        = 0;
			x25->state     = X25_STATE_3;
			sk->sk_state   = TCP_ESTABLISHED;
			/*
			 *	Parse the data in the frame.
			 */
			FUNC1(skb, X25_STD_MIN_LEN);
			FUNC1(skb, FUNC4(skb->data, &source_addr, &dest_addr));
			FUNC1(skb,
				 FUNC6(skb, &x25->facilities,
						&x25->dte_facilities,
						&x25->vc_facil_mask));
			/*
			 *	Copy any Call User Data.
			 */
			if (skb->len >= 0) {
				FUNC0(skb,
					      x25->calluserdata.cuddata,
					      skb->len);
				x25->calluserdata.cudlength = skb->len;
			}
			if (!FUNC2(sk, SOCK_DEAD))
				sk->sk_state_change(sk);
			break;
		}
		case X25_CLEAR_REQUEST:
			FUNC9(sk, X25_CLEAR_CONFIRMATION);
			FUNC5(sk, ECONNREFUSED, skb->data[3], skb->data[4]);
			break;

		default:
			break;
	}

	return 0;
}