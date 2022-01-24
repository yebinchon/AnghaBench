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
struct TYPE_2__ {int len; char* name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static char *FUNC4(struct dentry *dentry, int extra)
{
	struct dentry *parent;
	char *root, *name;
	const char *seg_name;
	int len, seg_len;

	len = 0;
	parent = dentry;
	while (parent->d_parent != parent) {
		if (FUNC0(parent))
			len += FUNC2("pid") + 1;
		else len += parent->d_name.len + 1;
		parent = parent->d_parent;
	}

	root = "proc";
	len += FUNC2(root);
	name = FUNC1(len + extra + 1, GFP_KERNEL);
	if (name == NULL)
		return NULL;

	name[len] = '\0';
	parent = dentry;
	while (parent->d_parent != parent) {
		if (FUNC0(parent)) {
			seg_name = "pid";
			seg_len = FUNC2("pid");
		}
		else {
			seg_name = parent->d_name.name;
			seg_len = parent->d_name.len;
		}

		len -= seg_len + 1;
		name[len] = '/';
		FUNC3(&name[len + 1], seg_name, seg_len);
		parent = parent->d_parent;
	}
	FUNC3(name, root, FUNC2(root));
	return name;
}