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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int /*<<< orphan*/  error_code; int /*<<< orphan*/  pipe_handle; scalar_t__ message_id; int /*<<< orphan*/  utid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MAX_PNPIPE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_srv ; 
 int FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *oskb,
			u8 code, const void *data, int len, gfp_t priority)
{
	const struct pnpipehdr *oph = FUNC4(oskb);
	struct pnpipehdr *ph;
	struct sk_buff *skb;

	skb = FUNC2(MAX_PNPIPE_HEADER + len, priority);
	if (!skb)
		return -ENOMEM;
	FUNC8(skb, sk);

	FUNC6(skb, MAX_PNPIPE_HEADER);
	FUNC1(skb, len);
	FUNC5(skb, data, len);
	FUNC0(skb, sizeof(*ph));
	FUNC7(skb);
	ph = FUNC4(skb);
	ph->utid = oph->utid;
	ph->message_id = oph->message_id + 1; /* REQ -> RESP */
	ph->pipe_handle = oph->pipe_handle;
	ph->error_code = code;

	return FUNC3(sk, skb, &pipe_srv);
}