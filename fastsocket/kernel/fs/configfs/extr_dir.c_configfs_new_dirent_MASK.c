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
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_children; int /*<<< orphan*/  s_sibling; void* s_element; int /*<<< orphan*/  s_links; int /*<<< orphan*/  s_count; } ;

/* Variables and functions */
 int CONFIGFS_USET_DROPPING ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct configfs_dirent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  configfs_dir_cachep ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct configfs_dirent*) ; 
 struct configfs_dirent* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct configfs_dirent *FUNC9(struct configfs_dirent *parent_sd,
						   void *element, int type)
{
	struct configfs_dirent * sd;

	sd = FUNC5(configfs_dir_cachep, GFP_KERNEL);
	if (!sd)
		return FUNC0(-ENOMEM);

	FUNC2(&sd->s_count, 1);
	FUNC1(&sd->s_links);
	FUNC1(&sd->s_children);
	sd->s_element = element;
	sd->s_type = type;
	FUNC3(sd);
	FUNC7(&configfs_dirent_lock);
	if (parent_sd->s_type & CONFIGFS_USET_DROPPING) {
		FUNC8(&configfs_dirent_lock);
		FUNC4(configfs_dir_cachep, sd);
		return FUNC0(-ENOENT);
	}
	FUNC6(&sd->s_sibling, &parent_sd->s_children);
	FUNC8(&configfs_dirent_lock);

	return sd;
}