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
struct dfs_info3_param {struct dfs_info3_param* node_name; struct dfs_info3_param* path_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dfs_info3_param*) ; 

__attribute__((used)) static inline void FUNC1(struct dfs_info3_param *param)
{
	if (param) {
		FUNC0(param->path_name);
		FUNC0(param->node_name);
		FUNC0(param);
	}
}