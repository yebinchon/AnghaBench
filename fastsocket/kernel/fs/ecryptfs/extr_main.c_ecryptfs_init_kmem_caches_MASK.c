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
struct ecryptfs_cache_info {int /*<<< orphan*/  name; int /*<<< orphan*/ * cache; int /*<<< orphan*/  ctor; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (struct ecryptfs_cache_info*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 struct ecryptfs_cache_info* ecryptfs_cache_infos ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	int i;

	for (i = 0; i < FUNC0(ecryptfs_cache_infos); i++) {
		struct ecryptfs_cache_info *info;

		info = &ecryptfs_cache_infos[i];
		*(info->cache) = FUNC3(info->name, info->size,
				0, SLAB_HWCACHE_ALIGN, info->ctor);
		if (!*(info->cache)) {
			FUNC1();
			FUNC2(KERN_WARNING, "%s: "
					"kmem_cache_create failed\n",
					info->name);
			return -ENOMEM;
		}
	}
	return 0;
}