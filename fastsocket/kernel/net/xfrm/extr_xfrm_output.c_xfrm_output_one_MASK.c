#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_9__ {scalar_t__ oseq; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_5__* type; TYPE_4__ curlft; TYPE_3__ replay; TYPE_1__* outer_mode; } ;
struct sk_buff {scalar_t__ len; } ;
struct net {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_8__ {scalar_t__ output; } ;
struct TYPE_12__ {TYPE_2__ seq; } ;
struct TYPE_11__ {int flags; int (* output ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_7__ {int flags; int (* output ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINPROGRESS ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEEXPIRED ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEMODEERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEPROTOERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATESEQERROR ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_MODE_FLAG_TUNNEL ; 
 int /*<<< orphan*/  XFRM_REPLAY_UPDATE ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 int XFRM_TYPE_REPLAY_PROT ; 
 struct dst_entry* FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC9 (struct xfrm_state*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct net*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct xfrm_state*) ; 
 int FUNC15 (struct xfrm_state*,struct sk_buff*) ; 
 struct net* FUNC16 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, int err)
{
	struct dst_entry *dst = FUNC4(skb);
	struct xfrm_state *x = dst->xfrm;
	struct net *net = FUNC16(x);

	if (err <= 0)
		goto resume;

	do {
		err = FUNC15(x, skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			goto error_nolock;
		}

		err = x->outer_mode->output(x, skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEMODEERROR);
			goto error_nolock;
		}

		FUNC6(&x->lock);
		err = FUNC14(x);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEEXPIRED);
			goto error;
		}

		if (x->type->flags & XFRM_TYPE_REPLAY_PROT) {
			FUNC1(skb)->seq.output = ++x->replay.oseq;
			if (FUNC10(x->replay.oseq == 0)) {
				FUNC0(net, LINUX_MIB_XFRMOUTSTATESEQERROR);
				x->replay.oseq--;
				FUNC12(x, skb);
				err = -EOVERFLOW;
				goto error;
			}
			if (FUNC11(net))
				FUNC13(x, XFRM_REPLAY_UPDATE);
		}

		x->curlft.bytes += skb->len;
		x->curlft.packets++;

		FUNC7(&x->lock);

		err = x->type->output(x, skb);
		if (err == -EINPROGRESS)
			goto out_exit;

resume:
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEPROTOERROR);
			goto error_nolock;
		}

		dst = FUNC2(dst);
		if (!dst) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			err = -EHOSTUNREACH;
			goto error_nolock;
		}
		FUNC5(skb, dst);
		x = dst->xfrm;
	} while (x && !(x->outer_mode->flags & XFRM_MODE_FLAG_TUNNEL));

	err = 0;

out_exit:
	return err;
error:
	FUNC7(&x->lock);
error_nolock:
	FUNC3(skb);
	goto out_exit;
}