#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct ct_iter_state* private; } ;
struct TYPE_4__ {scalar_t__ htable_size; TYPE_1__* hash; } ;
struct net {TYPE_2__ ct; } ;
struct hlist_nulls_node {int /*<<< orphan*/  next; } ;
struct ct_iter_state {scalar_t__ bucket; } ;
struct TYPE_3__ {int /*<<< orphan*/  first; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hlist_nulls_node*) ; 
 scalar_t__ FUNC1 (struct hlist_nulls_node*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct hlist_nulls_node* FUNC3 (int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (struct seq_file*) ; 

__attribute__((used)) static struct hlist_nulls_node *FUNC5(struct seq_file *seq,
				      struct hlist_nulls_node *head)
{
	struct net *net = FUNC4(seq);
	struct ct_iter_state *st = seq->private;

	head = FUNC3(head->next);
	while (FUNC1(head)) {
		if (FUNC2(FUNC0(head) == st->bucket)) {
			if (++st->bucket >= net->ct.htable_size)
				return NULL;
		}
		head = FUNC3(net->ct.hash[st->bucket].first);
	}
	return head;
}