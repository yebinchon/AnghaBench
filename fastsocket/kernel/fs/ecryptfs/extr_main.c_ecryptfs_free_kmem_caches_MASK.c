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
struct ecryptfs_cache_info {scalar_t__* cache; } ;

/* Variables and functions */
 int FUNC0 (struct ecryptfs_cache_info*) ; 
 struct ecryptfs_cache_info* ecryptfs_cache_infos ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	for (i = 0; i < FUNC0(ecryptfs_cache_infos); i++) {
		struct ecryptfs_cache_info *info;

		info = &ecryptfs_cache_infos[i];
		if (*(info->cache))
			FUNC1(*(info->cache));
	}
}