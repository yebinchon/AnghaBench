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
struct config_item {int dummy; } ;
struct o2nm_node {struct config_item nd_item; int /*<<< orphan*/  nd_lock; int /*<<< orphan*/  nd_name; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct config_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ O2NM_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 struct o2nm_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2nm_node_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static struct config_item *FUNC6(struct config_group *group,
						     const char *name)
{
	struct o2nm_node *node = NULL;

	if (FUNC5(name) > O2NM_MAX_NAME_LEN)
		return FUNC0(-ENAMETOOLONG);

	node = FUNC2(sizeof(struct o2nm_node), GFP_KERNEL);
	if (node == NULL)
		return FUNC0(-ENOMEM);

	FUNC4(node->nd_name, name); /* use item.ci_namebuf instead? */
	FUNC1(&node->nd_item, name, &o2nm_node_type);
	FUNC3(&node->nd_lock);

	return &node->nd_item;
}