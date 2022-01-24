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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_type; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/ * dump; } ;
struct net {int /*<<< orphan*/  genl_sock; } ;
struct genlmsghdr {int /*<<< orphan*/  cmd; } ;
struct genl_ops {int flags; int (* doit ) (struct sk_buff*,struct genl_info*) ;int /*<<< orphan*/  policy; int /*<<< orphan*/  done; int /*<<< orphan*/ * dumpit; } ;
struct genl_info {scalar_t__ attrs; void* userhdr; void* genlhdr; struct nlmsghdr* nlhdr; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/  snd_seq; } ;
struct genl_family {int hdrsize; scalar_t__ attrbuf; int /*<<< orphan*/  maxattr; int /*<<< orphan*/  netnsok; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int GENL_ADMIN_PERM ; 
 int GENL_HDRLEN ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int NLM_F_DUMP ; 
 struct genl_family* FUNC1 (int /*<<< orphan*/ ) ; 
 struct genl_ops* FUNC2 (int /*<<< orphan*/ ,struct genl_family*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*,struct net*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ; 
 void* FUNC8 (struct nlmsghdr*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct nlmsghdr*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sk_buff*,struct genl_info*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct nlmsghdr *nlh)
{
	struct genl_ops *ops;
	struct genl_family *family;
	struct net *net = FUNC12(skb->sk);
	struct genl_info info;
	struct genlmsghdr *hdr = FUNC8(nlh);
	int hdrlen, err;

	family = FUNC1(nlh->nlmsg_type);
	if (family == NULL)
		return -ENOENT;

	/* this family doesn't exist in this netns */
	if (!family->netnsok && !FUNC6(net, &init_net))
		return -ENOENT;

	hdrlen = GENL_HDRLEN + family->hdrsize;
	if (nlh->nlmsg_len < FUNC9(hdrlen))
		return -EINVAL;

	ops = FUNC2(hdr->cmd, family);
	if (ops == NULL)
		return -EOPNOTSUPP;

	if ((ops->flags & GENL_ADMIN_PERM) &&
	    FUNC11(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		if (ops->dumpit == NULL)
			return -EOPNOTSUPP;

		FUNC5();
		{
			struct netlink_dump_control c = {
				.dump = ops->dumpit,
				.done = ops->done,
			};
			err = FUNC7(net->genl_sock, skb, nlh, &c);
		}
		FUNC4();
		return err;
	}

	if (ops->doit == NULL)
		return -EOPNOTSUPP;

	if (family->attrbuf) {
		err = FUNC10(nlh, hdrlen, family->attrbuf, family->maxattr,
				  ops->policy);
		if (err < 0)
			return err;
	}

	info.snd_seq = nlh->nlmsg_seq;
	info.snd_pid = FUNC0(skb).pid;
	info.nlhdr = nlh;
	info.genlhdr = FUNC8(nlh);
	info.userhdr = FUNC8(nlh) + GENL_HDRLEN;
	info.attrs = family->attrbuf;
	FUNC3(&info, net);

	return ops->doit(skb, &info);
}