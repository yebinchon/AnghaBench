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
struct target_fabric_configfs {int /*<<< orphan*/  tf_name; int /*<<< orphan*/  tf_list; int /*<<< orphan*/  tf_subsys; struct module* tf_module; int /*<<< orphan*/  tf_access_cnt; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct target_fabric_configfs* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TARGET_FABRIC_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_tf_list ; 
 int /*<<< orphan*/  g_tf_lock ; 
 struct target_fabric_configfs* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/ * target_core_subsystem ; 
 int /*<<< orphan*/  FUNC11 (struct target_fabric_configfs*) ; 

struct target_fabric_configfs *FUNC12(
	struct module *fabric_mod,
	const char *name)
{
	struct target_fabric_configfs *tf;

	if (!(name)) {
		FUNC8("Unable to locate passed fabric name\n");
		return FUNC0(-EINVAL);
	}
	if (FUNC10(name) >= TARGET_FABRIC_NAME_SIZE) {
		FUNC8("Passed name: %s exceeds TARGET_FABRIC"
			"_NAME_SIZE\n", name);
		return FUNC0(-EINVAL);
	}

	tf = FUNC3(sizeof(struct target_fabric_configfs), GFP_KERNEL);
	if (!tf)
		return FUNC0(-ENOMEM);

	FUNC1(&tf->tf_list);
	FUNC2(&tf->tf_access_cnt, 0);
	/*
	 * Setup the default generic struct config_item_type's (cits) in
	 * struct target_fabric_configfs->tf_cit_tmpl
	 */
	tf->tf_module = fabric_mod;
	FUNC11(tf);

	tf->tf_subsys = target_core_subsystem[0];
	FUNC9(tf->tf_name, TARGET_FABRIC_NAME_SIZE, "%s", name);

	FUNC5(&g_tf_lock);
	FUNC4(&tf->tf_list, &g_tf_list);
	FUNC6(&g_tf_lock);

	FUNC7("<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>"
			">>>>>>>>>>>>>>\n");
	FUNC7("Initialized struct target_fabric_configfs: %p for"
			" %s\n", tf, tf->tf_name);
	return tf;
}