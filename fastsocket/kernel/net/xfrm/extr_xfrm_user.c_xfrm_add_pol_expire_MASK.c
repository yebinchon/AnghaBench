#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_userpolicy_info {int /*<<< orphan*/  dir; int /*<<< orphan*/  sel; scalar_t__ index; } ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_user_polexpire {scalar_t__ hard; struct xfrm_userpolicy_info pol; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dead; } ;
struct xfrm_policy {TYPE_1__ walk; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  sessionid; int /*<<< orphan*/  loginuid; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 size_t XFRMA_SEC_CTX ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nlattr**) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC3 (struct nlattr*) ; 
 struct xfrm_user_polexpire* FUNC4 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_sec_ctx*) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_policy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr**,struct xfrm_mark*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC15 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 struct xfrm_policy* FUNC16 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xfrm_sec_ctx*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct xfrm_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC8(skb->sk);
	struct xfrm_policy *xp;
	struct xfrm_user_polexpire *up = FUNC4(nlh);
	struct xfrm_userpolicy_info *p = &up->pol;
	u8 type = XFRM_POLICY_TYPE_MAIN;
	int err = -ENOENT;
	struct xfrm_mark m;
	u32 mark = FUNC13(attrs, &m);

	err = FUNC1(&type, attrs);
	if (err)
		return err;

	err = FUNC10(p->dir);
	if (err)
		return err;

	if (p->index)
		xp = FUNC15(net, mark, type, p->dir, p->index, 0, &err);
	else {
		struct nlattr *rt = attrs[XFRMA_SEC_CTX];
		struct xfrm_sec_ctx *ctx;

		err = FUNC11(attrs);
		if (err)
			return err;

		ctx = NULL;
		if (rt) {
			struct xfrm_user_sec_ctx *uctx = FUNC3(rt);

			err = FUNC6(&ctx, uctx);
			if (err)
				return err;
		}
		xp = FUNC16(net, mark, type, p->dir,
					   &p->sel, ctx, 0, &err);
		FUNC7(ctx);
	}
	if (xp == NULL)
		return -ENOENT;

	if (FUNC9(xp->walk.dead))
		goto out;

	err = 0;
	if (up->hard) {
		uid_t loginuid = FUNC0(skb).loginuid;
		uid_t sessionid = FUNC0(skb).sessionid;
		u32 sid = FUNC0(skb).sid;
		FUNC17(xp, p->dir);
		FUNC12(xp, 1, loginuid, sessionid, sid);

	} else {
		// reset the timers here?
		FUNC5("Dont know what to do with soft policy expire\n");
	}
	FUNC2(xp, p->dir, up->hard, current->pid);

out:
	FUNC14(xp);
	return err;
}