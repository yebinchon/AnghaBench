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
typedef  void* u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {void** data; int /*<<< orphan*/  pep_type; int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  message_id; scalar_t__ utid; } ;
struct pep_sock {int /*<<< orphan*/  pipe_handle; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MAX_PNPIPE_HEADER ; 
 void* PAD ; 
 int /*<<< orphan*/  PNS_PEP_STATUS_IND ; 
 int /*<<< orphan*/  PN_PEP_TYPE_COMMON ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  pipe_srv ; 
 int FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct pnpipehdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, u8 type, u8 status, gfp_t priority)
{
	struct pep_sock *pn = FUNC2(sk);
	struct pnpipehdr *ph;
	struct sk_buff *skb;

	skb = FUNC1(MAX_PNPIPE_HEADER + 4, priority);
	if (!skb)
		return -ENOMEM;
	FUNC7(skb, sk);

	FUNC5(skb, MAX_PNPIPE_HEADER + 4);
	FUNC0(skb, sizeof(*ph) + 4);
	FUNC6(skb);
	ph = FUNC4(skb);
	ph->utid = 0;
	ph->message_id = PNS_PEP_STATUS_IND;
	ph->pipe_handle = pn->pipe_handle;
	ph->pep_type = PN_PEP_TYPE_COMMON;
	ph->data[1] = type;
	ph->data[2] = PAD;
	ph->data[3] = PAD;
	ph->data[4] = status;

	return FUNC3(sk, skb, &pipe_srv);
}