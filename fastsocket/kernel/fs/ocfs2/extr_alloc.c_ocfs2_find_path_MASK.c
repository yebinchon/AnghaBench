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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct find_path_data {int index; struct ocfs2_path* path; } ;

/* Variables and functions */
 int FUNC0 (struct ocfs2_caching_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_path_data*) ; 
 int /*<<< orphan*/  find_path_ins ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_path*) ; 

int FUNC2(struct ocfs2_caching_info *ci,
		    struct ocfs2_path *path, u32 cpos)
{
	struct find_path_data data;

	data.index = 1;
	data.path = path;
	return FUNC0(ci, FUNC1(path), cpos,
				 find_path_ins, &data);
}