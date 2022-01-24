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
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_selector {void* dport_mask; scalar_t__ dport; void* proto; int /*<<< orphan*/  prefixlen_d; int /*<<< orphan*/  daddr; void* sport_mask; scalar_t__ sport; int /*<<< orphan*/  prefixlen_s; int /*<<< orphan*/  saddr; int /*<<< orphan*/  family; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct xfrm_policy {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_sec_ctx {int dummy; } ;
struct sadb_x_policy {scalar_t__ sadb_x_policy_dir; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct sadb_address {int /*<<< orphan*/  sadb_address_proto; int /*<<< orphan*/  sadb_address_prefixlen; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ byid; } ;
struct km_event {int /*<<< orphan*/  event; TYPE_1__ data; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  sel ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_MARK ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ IPSEC_DIR_MAX ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_X_EXT_POLICY ; 
 int SADB_X_EXT_SEC_CTX ; 
 int /*<<< orphan*/  XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_policy*,scalar_t__,struct km_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_selector*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC7 (struct sadb_x_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sadb_address*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*) ; 
 int FUNC10 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_sec_ctx*) ; 
 struct net* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_policy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC15 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct xfrm_selector*,struct xfrm_sec_ctx*,int,int*) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
	struct net *net = FUNC12(sk);
	int err;
	struct sadb_address *sa;
	struct sadb_x_policy *pol;
	struct xfrm_policy *xp;
	struct xfrm_selector sel;
	struct km_event c;
	struct sadb_x_sec_ctx *sec_ctx;
	struct xfrm_sec_ctx *pol_ctx = NULL;

	if (!FUNC9(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]) ||
	    !ext_hdrs[SADB_X_EXT_POLICY-1])
		return -EINVAL;

	pol = ext_hdrs[SADB_X_EXT_POLICY-1];
	if (!pol->sadb_x_policy_dir || pol->sadb_x_policy_dir >= IPSEC_DIR_MAX)
		return -EINVAL;

	FUNC5(&sel, 0, sizeof(sel));

	sa = ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
	sel.family = FUNC8(sa, &sel.saddr);
	sel.prefixlen_s = sa->sadb_address_prefixlen;
	sel.proto = FUNC6(sa->sadb_address_proto);
	sel.sport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (sel.sport)
		sel.sport_mask = FUNC2(0xffff);

	sa = ext_hdrs[SADB_EXT_ADDRESS_DST-1],
	FUNC8(sa, &sel.daddr);
	sel.prefixlen_d = sa->sadb_address_prefixlen;
	sel.proto = FUNC6(sa->sadb_address_proto);
	sel.dport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (sel.dport)
		sel.dport_mask = FUNC2(0xffff);

	sec_ctx = (struct sadb_x_sec_ctx *) ext_hdrs[SADB_X_EXT_SEC_CTX-1];
	if (sec_ctx != NULL) {
		struct xfrm_user_sec_ctx *uctx = FUNC7(sec_ctx);

		if (!uctx)
			return -ENOMEM;

		err = FUNC10(&pol_ctx, uctx);
		FUNC3(uctx);
		if (err)
			return err;
	}

	xp = FUNC15(net, DUMMY_MARK, XFRM_POLICY_TYPE_MAIN,
				   pol->sadb_x_policy_dir - 1, &sel, pol_ctx,
				   1, &err);
	FUNC11(pol_ctx);
	if (xp == NULL)
		return -ENOENT;

	FUNC13(xp, err ? 0 : 1,
				 FUNC0(current),
				 FUNC1(current), 0);

	if (err)
		goto out;

	c.seq = hdr->sadb_msg_seq;
	c.pid = hdr->sadb_msg_pid;
	c.data.byid = 0;
	c.event = XFRM_MSG_DELPOLICY;
	FUNC4(xp, pol->sadb_x_policy_dir-1, &c);

out:
	FUNC14(xp);
	return err;
}