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
struct nf_conntrack_helper {scalar_t__ expect_class_max; int /*<<< orphan*/  hnode; int /*<<< orphan*/  name; int /*<<< orphan*/ * expect_policy; int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NF_CT_HELPER_NAME_LEN ; 
 scalar_t__ NF_CT_MAX_EXPECT_CLASSES ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_helper_count ; 
 int /*<<< orphan*/ * nf_ct_helper_hash ; 
 int /*<<< orphan*/  nf_ct_helper_mutex ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct nf_conntrack_helper *me)
{
	unsigned int h = FUNC1(&me->tuple);

	FUNC0(me->expect_policy == NULL);
	FUNC0(me->expect_class_max >= NF_CT_MAX_EXPECT_CLASSES);
	FUNC0(FUNC5(me->name) > NF_CT_HELPER_NAME_LEN - 1);

	FUNC3(&nf_ct_helper_mutex);
	FUNC2(&me->hnode, &nf_ct_helper_hash[h]);
	nf_ct_helper_count++;
	FUNC4(&nf_ct_helper_mutex);

	return 0;
}