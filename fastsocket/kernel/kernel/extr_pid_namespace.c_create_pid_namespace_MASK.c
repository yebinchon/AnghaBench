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
struct pid_namespace {int level; TYPE_1__* pidmap; int /*<<< orphan*/  proc_work; int /*<<< orphan*/  parent; int /*<<< orphan*/  kref; int /*<<< orphan*/  proc_inum; int /*<<< orphan*/ * pid_cachep; } ;
struct TYPE_2__ {int /*<<< orphan*/  page; int /*<<< orphan*/  nr_free; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_PAGE ; 
 int ENOMEM ; 
 struct pid_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PIDMAP_ENTRIES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 struct pid_namespace* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pid_ns_cachep ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_cleanup_work ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pid_namespace *FUNC12(struct pid_namespace *parent_pid_ns)
{
	struct pid_namespace *ns;
	unsigned int level = parent_pid_ns->level + 1;
	int i, err = -ENOMEM;

	ns = FUNC7(pid_ns_cachep, GFP_KERNEL);
	if (ns == NULL)
		goto out;

	ns->pidmap[0].page = FUNC9(PAGE_SIZE, GFP_KERNEL);
	if (!ns->pidmap[0].page)
		goto out_free;

	ns->pid_cachep = FUNC3(level + 1);
	if (ns->pid_cachep == NULL)
		goto out_free_map;

	err = FUNC10(&ns->proc_inum);
	if (err)
		goto out_free_map;

	FUNC8(&ns->kref);
	ns->level = level;
	ns->parent = FUNC4(parent_pid_ns);
	FUNC1(&ns->proc_work, proc_cleanup_work);

	FUNC11(0, ns->pidmap[0].page);
	FUNC2(&ns->pidmap[0].nr_free, BITS_PER_PAGE - 1);

	for (i = 1; i < PIDMAP_ENTRIES; i++)
		FUNC2(&ns->pidmap[i].nr_free, BITS_PER_PAGE);

	return ns;

out_free_map:
	FUNC5(ns->pidmap[0].page);
out_free:
	FUNC6(pid_ns_cachep, ns);
out:
	return FUNC0(err);
}