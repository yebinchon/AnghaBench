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
struct net_generic {int len; void** ptr; int /*<<< orphan*/  rcu; } ;
struct net {struct net_generic* gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void***,void***,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_generic* FUNC4 () ; 
 int /*<<< orphan*/  net_generic_release ; 
 int /*<<< orphan*/  net_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct net_generic*,struct net_generic*) ; 

int FUNC6(struct net *net, int id, void *data)
{
	struct net_generic *ng, *old_ng;

	FUNC0(!FUNC3(&net_mutex));
	FUNC0(id == 0);

	ng = old_ng = net->gen;
	if (old_ng->len >= id)
		goto assign;

	ng = FUNC4();
	if (ng == NULL)
		return -ENOMEM;

	/*
	 * Some synchronisation notes:
	 *
	 * The net_generic explores the net->gen array inside rcu
	 * read section. Besides once set the net->gen->ptr[x]
	 * pointer never changes (see rules in netns/generic.h).
	 *
	 * That said, we simply duplicate this array and schedule
	 * the old copy for kfree after a grace period.
	 */

	FUNC2(&ng->ptr, &old_ng->ptr, old_ng->len * sizeof(void*));

	FUNC5(net->gen, ng);
	FUNC1(&old_ng->rcu, net_generic_release);
assign:
	ng->ptr[id - 1] = data;
	return 0;
}