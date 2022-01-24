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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u8 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  broadcast; int /*<<< orphan*/ ** dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  msg_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** h_dest; int /*<<< orphan*/ ** h_source; } ;
struct bnep_session {scalar_t__ state; int /*<<< orphan*/  mc_filter; TYPE_2__ msg; int /*<<< orphan*/  role; struct socket* sock; struct net_device* dev; TYPE_1__ eh; } ;
struct bnep_connadd_req {char* device; int /*<<< orphan*/  role; } ;
struct TYPE_6__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CLONE_KERNEL ; 
 int EEXIST ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct bnep_session* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnep_session*) ; 
 struct net_device* FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnep_net_setup ; 
 int /*<<< orphan*/  bnep_session ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 int /*<<< orphan*/  FUNC10 (struct bnep_session*) ; 
 int /*<<< orphan*/  bnep_type ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct bnep_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 struct bnep_session* FUNC16 (struct net_device*) ; 
 int FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct bnep_connadd_req *req, struct socket *sock)
{
	struct net_device *dev;
	struct bnep_session *s, *ss;
	u8 dst[ETH_ALEN], src[ETH_ALEN];
	int err;

	FUNC0("");

	FUNC7((void *) dst, &FUNC11(sock->sk)->dst);
	FUNC7((void *) src, &FUNC11(sock->sk)->src);

	/* session struct allocated as private part of net_device */
	dev = FUNC6(sizeof(struct bnep_session),
			   (*req->device) ? req->device : "bnep%d",
			   bnep_net_setup);
	if (!dev)
		return -ENOMEM;

	FUNC12(&bnep_session_sem);

	ss = FUNC3(dst);
	if (ss && ss->state == BT_CONNECTED) {
		err = -EEXIST;
		goto failed;
	}

	s = FUNC16(dev);

	/* This is rx header therefore addresses are swapped.
	 * ie eh.h_dest is our local address. */
	FUNC15(s->eh.h_dest,   &src, ETH_ALEN);
	FUNC15(s->eh.h_source, &dst, ETH_ALEN);
	FUNC15(dev->dev_addr, s->eh.h_dest, ETH_ALEN);

	s->dev   = dev;
	s->sock  = sock;
	s->role  = req->role;
	s->state = BT_CONNECTED;

	s->msg.msg_flags = MSG_NOSIGNAL;

#ifdef CONFIG_BT_BNEP_MC_FILTER
	/* Set default mc filter */
	set_bit(bnep_mc_hash(dev->broadcast), (ulong *) &s->mc_filter);
#endif

#ifdef CONFIG_BT_BNEP_PROTO_FILTER
	/* Set default protocol filter */
	bnep_set_default_proto_filter(s);
#endif

	FUNC1(dev, FUNC8(s));
	FUNC2(dev, &bnep_type);

	err = FUNC17(dev);
	if (err) {
		goto failed;
	}

	FUNC4(s);

	err = FUNC14(bnep_session, s, CLONE_KERNEL);
	if (err < 0) {
		/* Session thread start failed, gotta cleanup. */
		FUNC20(dev);
		FUNC5(s);
		goto failed;
	}

	FUNC21(&bnep_session_sem);
	FUNC19(req->device, dev->name);
	return 0;

failed:
	FUNC21(&bnep_session_sem);
	FUNC13(dev);
	return err;
}