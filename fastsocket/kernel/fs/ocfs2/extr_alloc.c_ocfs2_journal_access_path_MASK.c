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
struct ocfs2_path {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct ocfs2_path*,int) ; 
 int FUNC2 (struct ocfs2_path*) ; 

int FUNC3(struct ocfs2_caching_info *ci,
			      handle_t *handle,
			      struct ocfs2_path *path)
{
	int i, ret = 0;

	if (!path)
		goto out;

	for(i = 0; i < FUNC2(path); i++) {
		ret = FUNC1(handle, ci, path, i);
		if (ret < 0) {
			FUNC0(ret);
			goto out;
		}
	}

out:
	return ret;
}