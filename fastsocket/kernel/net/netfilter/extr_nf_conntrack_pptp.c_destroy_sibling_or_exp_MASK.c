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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* function ) (unsigned long) ;} ;
struct TYPE_4__ {scalar_t__ stream_timeout; scalar_t__ timeout; } ;
struct TYPE_5__ {TYPE_1__ gre; } ;
struct nf_conntrack_expect {TYPE_3__ timeout; TYPE_2__ proto; } ;
struct nf_conn {TYPE_3__ timeout; TYPE_2__ proto; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 struct nf_conntrack_tuple_hash* FUNC1 (struct net*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple const*) ; 
 struct nf_conntrack_expect* FUNC3 (struct net*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*) ; 
 struct nf_conntrack_expect* FUNC6 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static int FUNC10(struct net *net,
				  const struct nf_conntrack_tuple *t)
{
	const struct nf_conntrack_tuple_hash *h;
	struct nf_conntrack_expect *exp;
	struct nf_conn *sibling;

	FUNC8("trying to timeout ct or exp for tuple ");
	FUNC2(t);

	h = FUNC1(net, t);
	if (h)  {
		sibling = FUNC6(h);
		FUNC8("setting timeout of conntrack %p to 0\n", sibling);
		sibling->proto.gre.timeout	  = 0;
		sibling->proto.gre.stream_timeout = 0;
		if (FUNC0(&sibling->timeout))
			sibling->timeout.function((unsigned long)sibling);
		FUNC5(sibling);
		return 1;
	} else {
		exp = FUNC3(net, t);
		if (exp) {
			FUNC8("unexpect_related of expect %p\n", exp);
			FUNC7(exp);
			FUNC4(exp);
			return 1;
		}
	}
	return 0;
}