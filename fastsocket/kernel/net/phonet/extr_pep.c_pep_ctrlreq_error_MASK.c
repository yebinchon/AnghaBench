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
struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {void** data; int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  message_id; int /*<<< orphan*/  utid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_PHONET_HEADER ; 
 scalar_t__ MAX_PNPIPE_HEADER ; 
 void* PAD ; 
 int /*<<< orphan*/  PNS_PEP_CTRL_RESP ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sockaddr_pn*) ; 
 int FUNC2 (struct sock*,struct sk_buff*,struct sockaddr_pn*) ; 
 struct pnpipehdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *oskb, u8 code,
				gfp_t priority)
{
	const struct pnpipehdr *oph = FUNC3(oskb);
	struct sk_buff *skb;
	struct pnpipehdr *ph;
	struct sockaddr_pn dst;

	skb = FUNC0(MAX_PNPIPE_HEADER + 4, priority);
	if (!skb)
		return -ENOMEM;
	FUNC6(skb, sk);

	FUNC5(skb, MAX_PHONET_HEADER);
	ph = (struct pnpipehdr *)FUNC4(skb, sizeof(*ph) + 4);

	ph->utid = oph->utid;
	ph->message_id = PNS_PEP_CTRL_RESP;
	ph->pipe_handle = oph->pipe_handle;
	ph->data[0] = oph->data[1]; /* CTRL id */
	ph->data[1] = oph->data[0]; /* PEP type */
	ph->data[2] = code; /* error code, at an usual offset */
	ph->data[3] = PAD;
	ph->data[4] = PAD;

	FUNC1(oskb, &dst);
	return FUNC2(sk, skb, &dst);
}