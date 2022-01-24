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
typedef  int /*<<< orphan*/  uint64_t ;
struct v9fs_cookie {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const void *cookie_netfs_data,
				      uint64_t *size)
{
	const struct v9fs_cookie *vcookie = cookie_netfs_data;
	*size = FUNC1(&vcookie->inode);

	FUNC0(P9_DEBUG_FSC, "inode %p get attr %llu", &vcookie->inode,
		   *size);
}