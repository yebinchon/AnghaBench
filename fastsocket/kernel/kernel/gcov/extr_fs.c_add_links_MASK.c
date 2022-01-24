#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {scalar_t__ ext; } ;
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char FUNC0 (int /*<<< orphan*/ ,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* gcov_link ; 
 char* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC4 (struct gcov_node*) ; 
 char* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static void FUNC8(struct gcov_node *node, struct dentry *parent)
{
	char *basename;
	char *target;
	int num;
	int i;

	for (num = 0; gcov_link[num].ext; num++)
		/* Nothing. */;
	node->links = FUNC5(num, sizeof(struct dentry *), GFP_KERNEL);
	if (!node->links)
		return;
	for (i = 0; i < num; i++) {
		target = FUNC3(FUNC4(node)->filename,
					 &gcov_link[i]);
		if (!target)
			goto out_err;
		basename = FUNC7(target, '/');
		if (!basename)
			goto out_err;
		basename++;
		node->links[i] = FUNC0(FUNC2(basename),
							parent,	target);
		if (!node->links[i])
			goto out_err;
		FUNC6(target);
	}

	return;
out_err:
	FUNC6(target);
	while (i-- > 0)
		FUNC1(node->links[i]);
	FUNC6(node->links);
	node->links = NULL;
}