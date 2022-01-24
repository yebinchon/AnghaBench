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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conntrack_l3proto {int (* get_l4proto ) (struct sk_buff const*,unsigned int,unsigned int*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int NF_ACCEPT ; 
 struct nf_conntrack_l3proto* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff const*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_tuple*,struct nf_conntrack_l3proto*,struct nf_conntrack_l4proto*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct sk_buff const*,unsigned int,unsigned int*,int /*<<< orphan*/ *) ; 

bool FUNC6(const struct sk_buff *skb, unsigned int nhoff,
		       u_int16_t l3num, struct nf_conntrack_tuple *tuple)
{
	struct nf_conntrack_l3proto *l3proto;
	struct nf_conntrack_l4proto *l4proto;
	unsigned int protoff;
	u_int8_t protonum;
	int ret;

	FUNC3();

	l3proto = FUNC0(l3num);
	ret = l3proto->get_l4proto(skb, nhoff, &protoff, &protonum);
	if (ret != NF_ACCEPT) {
		FUNC4();
		return false;
	}

	l4proto = FUNC1(l3num, protonum);

	ret = FUNC2(skb, nhoff, protoff, l3num, protonum, tuple,
			      l3proto, l4proto);

	FUNC4();
	return ret;
}