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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct dccp_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ DCCP_LISTEN ; 
 scalar_t__ DCCP_OPEN ; 
 scalar_t__ FUNC0 (struct sock*,struct sock*,struct sk_buff*) ; 
 struct dccp_hdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sk_buff*,struct dccp_hdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,struct dccp_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_hdr *dh = FUNC1(skb);

	if (sk->sk_state == DCCP_OPEN) { /* Fast path */
		if (FUNC2(sk, skb, dh, skb->len))
			goto reset;
		return 0;
	}

	/*
	 *  Step 3: Process LISTEN state
	 *	 If P.type == Request or P contains a valid Init Cookie option,
	 *	      (* Must scan the packet's options to check for Init
	 *		 Cookies.  Only Init Cookies are processed here,
	 *		 however; other options are processed in Step 8.  This
	 *		 scan need only be performed if the endpoint uses Init
	 *		 Cookies *)
	 *	      (* Generate a new socket and switch to that socket *)
	 *	      Set S := new socket for this port pair
	 *	      S.state = RESPOND
	 *	      Choose S.ISS (initial seqno) or set from Init Cookies
	 *	      Initialize S.GAR := S.ISS
	 *	      Set S.ISR, S.GSR, S.SWL, S.SWH from packet or Init Cookies
	 *	      Continue with S.state == RESPOND
	 *	      (* A Response packet will be generated in Step 11 *)
	 *	 Otherwise,
	 *	      Generate Reset(No Connection) unless P.type == Reset
	 *	      Drop packet and return
	 *
	 * NOTE: the check for the packet types is done in
	 *	 dccp_rcv_state_process
	 */
	if (sk->sk_state == DCCP_LISTEN) {
		struct sock *nsk = FUNC5(sk, skb);

		if (nsk == NULL)
			goto discard;

		if (nsk != sk) {
			if (FUNC0(sk, nsk, skb))
				goto reset;
			return 0;
		}
	}

	if (FUNC3(sk, skb, dh, skb->len))
		goto reset;
	return 0;

reset:
	FUNC4(sk, skb);
discard:
	FUNC6(skb);
	return 0;
}