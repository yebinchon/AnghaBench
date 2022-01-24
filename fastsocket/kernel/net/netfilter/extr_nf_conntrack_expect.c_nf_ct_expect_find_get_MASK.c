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
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  use; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_expect* FUNC0 (struct net*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct nf_conntrack_expect *
FUNC4(struct net *net, const struct nf_conntrack_tuple *tuple)
{
	struct nf_conntrack_expect *i;

	FUNC2();
	i = FUNC0(net, tuple);
	if (i && !FUNC1(&i->use))
		i = NULL;
	FUNC3();

	return i;
}