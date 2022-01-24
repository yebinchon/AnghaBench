#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cache_resolve_queue_len; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_9__ {int qlen; } ;
struct TYPE_7__ {TYPE_4__ unresolved; } ;
struct TYPE_8__ {TYPE_2__ unres; } ;
struct mfc6_cache {int mf6c_parent; TYPE_3__ mfc_un; struct mfc6_cache* next; int /*<<< orphan*/  mf6c_mcastgrp; int /*<<< orphan*/  mf6c_origin; } ;
typedef  int /*<<< orphan*/  mifi_t ;
struct TYPE_10__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  MRT6MSG_NOCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct mfc6_cache* FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct mfc6_cache*) ; 
 int FUNC4 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct mfc6_cache*) ; 
 int /*<<< orphan*/  mfc_unres_lock ; 
 struct mfc6_cache* mfc_unres_queue ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct net *net, mifi_t mifi, struct sk_buff *skb)
{
	int err;
	struct mfc6_cache *c;

	FUNC12(&mfc_unres_lock);
	for (c = mfc_unres_queue; c; c = c->next) {
		if (FUNC10(FUNC9(c), net) &&
		    FUNC6(&c->mf6c_mcastgrp, &FUNC7(skb)->daddr) &&
		    FUNC6(&c->mf6c_origin, &FUNC7(skb)->saddr))
			break;
	}

	if (c == NULL) {
		/*
		 *	Create a new entry if allowable
		 */

		if (FUNC1(&net->ipv6.cache_resolve_queue_len) >= 10 ||
		    (c = FUNC2(net)) == NULL) {
			FUNC13(&mfc_unres_lock);

			FUNC8(skb);
			return -ENOBUFS;
		}

		/*
		 *	Fill in the new cache entry
		 */
		c->mf6c_parent = -1;
		c->mf6c_origin = FUNC7(skb)->saddr;
		c->mf6c_mcastgrp = FUNC7(skb)->daddr;

		/*
		 *	Reflect first query at pim6sd
		 */
		err = FUNC4(net, skb, mifi, MRT6MSG_NOCACHE);
		if (err < 0) {
			/* If the report failed throw the cache entry
			   out - Brad Parker
			 */
			FUNC13(&mfc_unres_lock);

			FUNC3(c);
			FUNC8(skb);
			return err;
		}

		FUNC0(&net->ipv6.cache_resolve_queue_len);
		c->next = mfc_unres_queue;
		mfc_unres_queue = c;

		FUNC5(1);
	}

	/*
	 *	See if we can append the packet
	 */
	if (c->mfc_un.unres.unresolved.qlen > 3) {
		FUNC8(skb);
		err = -ENOBUFS;
	} else {
		FUNC11(&c->mfc_un.unres.unresolved, skb);
		err = 0;
	}

	FUNC13(&mfc_unres_lock);
	return err;
}