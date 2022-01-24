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
struct btrfs_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  btrfs_path_cachep ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_path*) ; 

void FUNC2(struct btrfs_path *p)
{
	if (!p)
		return;
	FUNC0(p);
	FUNC1(btrfs_path_cachep, p);
}