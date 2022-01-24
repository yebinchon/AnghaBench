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
struct mnt_namespace {scalar_t__ event; int /*<<< orphan*/  poll; int /*<<< orphan*/  list; int /*<<< orphan*/ * root; int /*<<< orphan*/  count; int /*<<< orphan*/  seq; int /*<<< orphan*/  proc_inum; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mnt_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mnt_namespace*) ; 
 struct mnt_namespace* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_ns_seq ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mnt_namespace *FUNC8(void)
{
	struct mnt_namespace *new_ns;
	int ret;

	new_ns = FUNC6(sizeof(struct mnt_namespace), GFP_KERNEL);
	if (!new_ns)
		return FUNC0(-ENOMEM);
	ret = FUNC7(&new_ns->proc_inum);
	if (ret) {
		FUNC5(new_ns);
		return FUNC0(ret);
	}
	new_ns->seq = FUNC2(1, &mnt_ns_seq);
	FUNC3(&new_ns->count, 1);
	new_ns->root = NULL;
	FUNC1(&new_ns->list);
	FUNC4(&new_ns->poll);
	new_ns->event = 0;
	return new_ns;
}