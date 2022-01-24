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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct pneigh_entry {int flags; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net_device {scalar_t__ addr_len; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {scalar_t__ family; scalar_t__ key_len; struct neigh_table* next; } ;
struct ndmsg {scalar_t__ ndm_family; int ndm_flags; int /*<<< orphan*/  ndm_state; scalar_t__ ndm_ifindex; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 size_t NDA_DST ; 
 size_t NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_MAX ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int NTF_PROXY ; 
 int NTF_USE ; 
 int FUNC1 (struct neighbour*) ; 
 struct neighbour* FUNC2 (struct neigh_table*,void*,struct net_device*) ; 
 struct net_device* FUNC3 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC6 (struct neigh_table*,void*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 struct neigh_table* neigh_tables ; 
 int /*<<< orphan*/  neigh_tbl_lock ; 
 int FUNC8 (struct neighbour*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct nlattr*) ; 
 scalar_t__ FUNC10 (struct nlattr*) ; 
 struct ndmsg* FUNC11 (struct nlmsghdr*) ; 
 int FUNC12 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pneigh_entry* FUNC13 (struct neigh_table*,struct net*,void*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct net* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC16(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *tb[NDA_MAX+1];
	struct neigh_table *tbl;
	struct net_device *dev = NULL;
	int err;

	err = FUNC12(nlh, sizeof(*ndm), tb, NDA_MAX, NULL);
	if (err < 0)
		goto out;

	err = -EINVAL;
	if (tb[NDA_DST] == NULL)
		goto out;

	ndm = FUNC11(nlh);
	if (ndm->ndm_ifindex) {
		dev = FUNC3(net, ndm->ndm_ifindex);
		if (dev == NULL) {
			err = -ENODEV;
			goto out;
		}

		if (tb[NDA_LLADDR] && FUNC10(tb[NDA_LLADDR]) < dev->addr_len)
			goto out_dev_put;
	}

	FUNC14(&neigh_tbl_lock);
	for (tbl = neigh_tables; tbl; tbl = tbl->next) {
		int flags = NEIGH_UPDATE_F_ADMIN | NEIGH_UPDATE_F_OVERRIDE;
		struct neighbour *neigh;
		void *dst, *lladdr;

		if (tbl->family != ndm->ndm_family)
			continue;
		FUNC15(&neigh_tbl_lock);

		if (FUNC10(tb[NDA_DST]) < tbl->key_len)
			goto out_dev_put;
		dst = FUNC9(tb[NDA_DST]);
		lladdr = tb[NDA_LLADDR] ? FUNC9(tb[NDA_LLADDR]) : NULL;

		if (ndm->ndm_flags & NTF_PROXY) {
			struct pneigh_entry *pn;

			err = -ENOBUFS;
			pn = FUNC13(tbl, net, dst, dev, 1);
			if (pn) {
				pn->flags = ndm->ndm_flags;
				err = 0;
			}
			goto out_dev_put;
		}

		if (dev == NULL)
			goto out_dev_put;

		neigh = FUNC6(tbl, dst, dev);
		if (neigh == NULL) {
			if (!(nlh->nlmsg_flags & NLM_F_CREATE)) {
				err = -ENOENT;
				goto out_dev_put;
			}

			neigh = FUNC2(tbl, dst, dev);
			if (FUNC0(neigh)) {
				err = FUNC1(neigh);
				goto out_dev_put;
			}
		} else {
			if (nlh->nlmsg_flags & NLM_F_EXCL) {
				err = -EEXIST;
				FUNC7(neigh);
				goto out_dev_put;
			}

			if (!(nlh->nlmsg_flags & NLM_F_REPLACE))
				flags &= ~NEIGH_UPDATE_F_OVERRIDE;
		}

		if (ndm->ndm_flags & NTF_USE) {
			FUNC5(neigh, NULL);
			err = 0;
		} else
			err = FUNC8(neigh, lladdr, ndm->ndm_state, flags);
		FUNC7(neigh);
		goto out_dev_put;
	}

	FUNC15(&neigh_tbl_lock);
	err = -EAFNOSUPPORT;

out_dev_put:
	if (dev)
		FUNC4(dev);
out:
	return err;
}