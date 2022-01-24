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
struct kobject {char* name; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_MOVE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC2 (struct kobject*) ; 
 char* FUNC3 (struct kobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*,int /*<<< orphan*/ ,char**) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (struct kobject*,char const*) ; 

int FUNC10(struct kobject *kobj, const char *new_name)
{
	int error = 0;
	const char *devpath = NULL;
	const char *dup_name = NULL, *name;
	char *devpath_string = NULL;
	char *envp[2];

	kobj = FUNC2(kobj);
	if (!kobj)
		return -EINVAL;
	if (!kobj->parent)
		return -EINVAL;

	devpath = FUNC3(kobj, GFP_KERNEL);
	if (!devpath) {
		error = -ENOMEM;
		goto out;
	}
	devpath_string = FUNC1(FUNC8(devpath) + 15, GFP_KERNEL);
	if (!devpath_string) {
		error = -ENOMEM;
		goto out;
	}
	FUNC7(devpath_string, "DEVPATH_OLD=%s", devpath);
	envp[0] = devpath_string;
	envp[1] = NULL;

	name = dup_name = FUNC6(new_name, GFP_KERNEL);
	if (!name) {
		error = -ENOMEM;
		goto out;
	}

	error = FUNC9(kobj, new_name);
	if (error)
		goto out;

	/* Install the new kobject name */
	dup_name = kobj->name;
	kobj->name = name;

	/* This function is mostly/only used for network interface.
	 * Some hotplug package track interfaces by their name and
	 * therefore want to know when the name is changed by the user. */
	FUNC5(kobj, KOBJ_MOVE, envp);

out:
	FUNC0(dup_name);
	FUNC0(devpath_string);
	FUNC0(devpath);
	FUNC4(kobj);

	return error;
}