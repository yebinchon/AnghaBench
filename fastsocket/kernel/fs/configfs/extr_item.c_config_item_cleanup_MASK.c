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
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {int /*<<< orphan*/ * ci_name; int /*<<< orphan*/ * ci_namebuf; struct config_item* ci_parent; struct config_group* ci_group; struct config_item_type* ci_type; } ;
struct config_group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct config_item*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct config_item*) ; 

__attribute__((used)) static void FUNC6(struct config_item * item)
{
	struct config_item_type * t = item->ci_type;
	struct config_group * s = item->ci_group;
	struct config_item * parent = item->ci_parent;

	FUNC4("config_item %s: cleaning up\n",FUNC1(item));
	if (item->ci_name != item->ci_namebuf)
		FUNC3(item->ci_name);
	item->ci_name = NULL;
	if (t && t->ct_item_ops && t->ct_item_ops->release)
		t->ct_item_ops->release(item);
	if (s)
		FUNC0(s);
	if (parent)
		FUNC2(parent);
}