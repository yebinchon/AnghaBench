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
struct o2hb_region {struct config_item hr_item; int /*<<< orphan*/  hr_all_item; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 struct o2hb_region* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2hb_all_regions ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  o2hb_region_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct config_item *FUNC6(struct config_group *group,
							  const char *name)
{
	struct o2hb_region *reg = NULL;

	reg = FUNC2(sizeof(struct o2hb_region), GFP_KERNEL);
	if (reg == NULL)
		return FUNC0(-ENOMEM);

	FUNC1(&reg->hr_item, name, &o2hb_region_type);

	FUNC4(&o2hb_live_lock);
	FUNC3(&reg->hr_all_item, &o2hb_all_regions);
	FUNC5(&o2hb_live_lock);

	return &reg->hr_item;
}