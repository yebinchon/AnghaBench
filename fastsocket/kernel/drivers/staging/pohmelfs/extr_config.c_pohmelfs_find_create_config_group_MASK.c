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
struct pohmelfs_config_group {unsigned int idx; int /*<<< orphan*/  group_entry; scalar_t__ num_entry; int /*<<< orphan*/  config_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pohmelfs_config_group* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pohmelfs_config_list ; 
 struct pohmelfs_config_group* FUNC3 (unsigned int) ; 

__attribute__((used)) static struct pohmelfs_config_group *FUNC4(unsigned int idx)
{
	struct pohmelfs_config_group *g;

	g = FUNC3(idx);
	if (g)
		return g;

	g = FUNC1(sizeof(struct pohmelfs_config_group), GFP_KERNEL);
	if (!g)
		return NULL;

	FUNC0(&g->config_list);
	g->idx = idx;
	g->num_entry = 0;

	FUNC2(&g->group_entry, &pohmelfs_config_list);

	return g;
}