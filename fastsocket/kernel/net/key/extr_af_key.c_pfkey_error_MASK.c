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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ERESTARTNOHAND ; 
 int ERESTARTNOINTR ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sadb_msg*,struct sadb_msg*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sadb_msg *orig, int err, struct sock *sk)
{
	struct sk_buff *skb = FUNC1(sizeof(struct sadb_msg) + 16, GFP_KERNEL);
	struct sadb_msg *hdr;

	if (!skb)
		return -ENOBUFS;

	/* Woe be to the platform trying to support PFKEY yet
	 * having normal errnos outside the 1-255 range, inclusive.
	 */
	err = -err;
	if (err == ERESTARTSYS ||
	    err == ERESTARTNOHAND ||
	    err == ERESTARTNOINTR)
		err = EINTR;
	if (err >= 512)
		err = EINVAL;
	FUNC0(err <= 0 || err >= 256);

	hdr = (struct sadb_msg *) FUNC4(skb, sizeof(struct sadb_msg));
	FUNC3(hdr, orig);
	hdr->sadb_msg_errno = (uint8_t) err;
	hdr->sadb_msg_len = (sizeof(struct sadb_msg) /
			     sizeof(uint64_t));

	FUNC2(skb, GFP_KERNEL, BROADCAST_ONE, sk, FUNC5(sk));

	return 0;
}