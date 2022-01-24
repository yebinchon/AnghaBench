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
struct cgroupfs_root {int /*<<< orphan*/  name; int /*<<< orphan*/  release_agent_path; int /*<<< orphan*/  flags; scalar_t__ subsys_bits; } ;
struct cgroup_sb_opts {int /*<<< orphan*/  name; int /*<<< orphan*/  release_agent; int /*<<< orphan*/  flags; scalar_t__ subsys_bits; int /*<<< orphan*/  none; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroupfs_root* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cgroupfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroupfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroupfs_root*) ; 
 struct cgroupfs_root* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cgroupfs_root *FUNC6(struct cgroup_sb_opts *opts)
{
	struct cgroupfs_root *root;

	if (!opts->subsys_bits && !opts->none)
		return NULL;

	root = FUNC4(sizeof(*root), GFP_KERNEL);
	if (!root)
		return FUNC0(-ENOMEM);

	if (!FUNC2(root)) {
		FUNC3(root);
		return FUNC0(-ENOMEM);
	}
	FUNC1(root);

	root->subsys_bits = opts->subsys_bits;
	root->flags = opts->flags;
	if (opts->release_agent)
		FUNC5(root->release_agent_path, opts->release_agent);
	if (opts->name)
		FUNC5(root->name, opts->name);
	return root;
}