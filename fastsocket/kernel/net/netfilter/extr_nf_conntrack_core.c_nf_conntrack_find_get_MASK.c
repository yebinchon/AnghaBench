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
struct nf_conntrack_tuple_hash {int /*<<< orphan*/  tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_tuple_hash* FUNC0 (struct net*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_tuple const*,int /*<<< orphan*/ *) ; 
 struct nf_conn* FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

struct nf_conntrack_tuple_hash *
FUNC9(struct net *net, const struct nf_conntrack_tuple *tuple)
{
	struct nf_conntrack_tuple_hash *h;
	struct nf_conn *ct;

	FUNC6();
begin:
	h = FUNC0(net, tuple);
	if (h) {
		ct = FUNC5(h);
		if (FUNC8(FUNC2(ct) ||
			     !FUNC1(&ct->ct_general.use)))
			h = NULL;
		else {
			if (FUNC8(!FUNC4(tuple, &h->tuple))) {
				FUNC3(ct);
				goto begin;
			}
		}
	}
	FUNC7();

	return h;
}