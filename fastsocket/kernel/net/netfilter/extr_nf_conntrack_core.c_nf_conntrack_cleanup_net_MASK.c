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
struct TYPE_2__ {int /*<<< orphan*/  stat; int /*<<< orphan*/  slabname; int /*<<< orphan*/  nf_conntrack_cachep; int /*<<< orphan*/  htable_size; int /*<<< orphan*/  hash_vmalloc; int /*<<< orphan*/  hash; int /*<<< orphan*/  count; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kill_all ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct net *net)
{
 i_see_dead_people:
	FUNC8(net, kill_all, NULL);
	FUNC9(net);
	if (FUNC0(&net->ct.count) != 0) {
		FUNC10();
		goto i_see_dead_people;
	}

	FUNC7(net->ct.hash, net->ct.hash_vmalloc,
			     net->ct.htable_size);
	FUNC5(net);
	FUNC4(net);
	FUNC6(net);
	FUNC3(net->ct.nf_conntrack_cachep);
	FUNC2(net->ct.slabname);
	FUNC1(net->ct.stat);
}