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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  probes; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; scalar_t__ updated; scalar_t__ confirmed; scalar_t__ used; int /*<<< orphan*/  ha; TYPE_3__* dev; struct nda_cacheinfo* primary_key; TYPE_2__* tbl; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; TYPE_1__* ops; } ;
struct ndmsg {int ndm_state; int /*<<< orphan*/  ndm_ifindex; int /*<<< orphan*/  ndm_type; int /*<<< orphan*/  ndm_flags; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int /*<<< orphan*/  ndm_family; } ;
struct nda_cacheinfo {scalar_t__ ndm_refcnt; void* ndm_updated; void* ndm_confirmed; void* ndm_used; } ;
typedef  int /*<<< orphan*/  ci ;
struct TYPE_6__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int key_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NDA_CACHEINFO ; 
 int /*<<< orphan*/  NDA_DST ; 
 int /*<<< orphan*/  NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_PROBES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct nda_cacheinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int NUD_VALID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ndmsg* FUNC6 (struct nlmsghdr*) ; 
 int FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct neighbour *neigh,
			   u32 pid, u32 seq, int type, unsigned int flags)
{
	unsigned long now = jiffies;
	struct nda_cacheinfo ci;
	struct nlmsghdr *nlh;
	struct ndmsg *ndm;

	nlh = FUNC8(skb, pid, seq, type, sizeof(*ndm), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	ndm = FUNC6(nlh);
	ndm->ndm_family	 = neigh->ops->family;
	ndm->ndm_pad1    = 0;
	ndm->ndm_pad2    = 0;
	ndm->ndm_flags	 = neigh->flags;
	ndm->ndm_type	 = neigh->type;
	ndm->ndm_ifindex = neigh->dev->ifindex;

	FUNC0(skb, NDA_DST, neigh->tbl->key_len, neigh->primary_key);

	FUNC9(&neigh->lock);
	ndm->ndm_state	 = neigh->nud_state;
	if ((neigh->nud_state & NUD_VALID) &&
	    FUNC4(skb, NDA_LLADDR, neigh->dev->addr_len, neigh->ha) < 0) {
		FUNC10(&neigh->lock);
		goto nla_put_failure;
	}

	ci.ndm_used	 = FUNC3(now - neigh->used);
	ci.ndm_confirmed = FUNC3(now - neigh->confirmed);
	ci.ndm_updated	 = FUNC3(now - neigh->updated);
	ci.ndm_refcnt	 = FUNC2(&neigh->refcnt) - 1;
	FUNC10(&neigh->lock);

	FUNC1(skb, NDA_PROBES, FUNC2(&neigh->probes));
	FUNC0(skb, NDA_CACHEINFO, sizeof(ci), &ci);

	return FUNC7(skb, nlh);

nla_put_failure:
	FUNC5(skb, nlh);
	return -EMSGSIZE;
}