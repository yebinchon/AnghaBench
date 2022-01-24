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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {scalar_t__ family; scalar_t__ key_len; struct neigh_table* next; } ;
struct ndmsg {scalar_t__ ndm_family; int ndm_flags; scalar_t__ ndm_ifindex; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  NDA_DST ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int NTF_PROXY ; 
 int /*<<< orphan*/  NUD_FAILED ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct neighbour* FUNC2 (struct neigh_table*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*) ; 
 struct neigh_table* neigh_tables ; 
 int /*<<< orphan*/  neigh_tbl_lock ; 
 int FUNC4 (struct neighbour*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 struct ndmsg* FUNC7 (struct nlmsghdr*) ; 
 struct nlattr* FUNC8 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlmsghdr*) ; 
 int FUNC10 (struct neigh_table*,struct net*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC13(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *dst_attr;
	struct neigh_table *tbl;
	struct net_device *dev = NULL;
	int err = -EINVAL;

	if (FUNC9(nlh) < sizeof(*ndm))
		goto out;

	dst_attr = FUNC8(nlh, sizeof(*ndm), NDA_DST);
	if (dst_attr == NULL)
		goto out;

	ndm = FUNC7(nlh);
	if (ndm->ndm_ifindex) {
		dev = FUNC0(net, ndm->ndm_ifindex);
		if (dev == NULL) {
			err = -ENODEV;
			goto out;
		}
	}

	FUNC11(&neigh_tbl_lock);
	for (tbl = neigh_tables; tbl; tbl = tbl->next) {
		struct neighbour *neigh;

		if (tbl->family != ndm->ndm_family)
			continue;
		FUNC12(&neigh_tbl_lock);

		if (FUNC6(dst_attr) < tbl->key_len)
			goto out_dev_put;

		if (ndm->ndm_flags & NTF_PROXY) {
			err = FUNC10(tbl, net, FUNC5(dst_attr), dev);
			goto out_dev_put;
		}

		if (dev == NULL)
			goto out_dev_put;

		neigh = FUNC2(tbl, FUNC5(dst_attr), dev);
		if (neigh == NULL) {
			err = -ENOENT;
			goto out_dev_put;
		}

		err = FUNC4(neigh, NULL, NUD_FAILED,
				   NEIGH_UPDATE_F_OVERRIDE |
				   NEIGH_UPDATE_F_ADMIN);
		FUNC3(neigh);
		goto out_dev_put;
	}
	FUNC12(&neigh_tbl_lock);
	err = -EAFNOSUPPORT;

out_dev_put:
	if (dev)
		FUNC1(dev);
out:
	return err;
}