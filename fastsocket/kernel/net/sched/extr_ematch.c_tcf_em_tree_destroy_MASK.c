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
struct tcf_proto {int dummy; } ;
struct TYPE_4__ {int nmatches; } ;
struct tcf_ematch_tree {void* matches; TYPE_2__ hdr; } ;
struct tcf_ematch {TYPE_1__* ops; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* destroy ) (struct tcf_proto*,struct tcf_ematch*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct tcf_ematch*) ; 
 struct tcf_ematch* FUNC3 (struct tcf_ematch_tree*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_ematch*) ; 

void FUNC5(struct tcf_proto *tp, struct tcf_ematch_tree *tree)
{
	int i;

	if (tree->matches == NULL)
		return;

	for (i = 0; i < tree->hdr.nmatches; i++) {
		struct tcf_ematch *em = FUNC3(tree, i);

		if (em->ops) {
			if (em->ops->destroy)
				em->ops->destroy(tp, em);
			else if (!FUNC4(em))
				FUNC0((void *) em->data);
			FUNC1(em->ops->owner);
		}
	}

	tree->hdr.nmatches = 0;
	FUNC0(tree->matches);
	tree->matches = NULL;
}