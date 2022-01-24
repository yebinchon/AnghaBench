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
struct sta_info {int dummy; } ;
struct mesh_path {int sn; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; scalar_t__ exp_time; scalar_t__ hop_count; scalar_t__ metric; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESH_PATH_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct mesh_path*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mesh_path *mpath, struct sta_info *next_hop)
{
	FUNC3(&mpath->state_lock);
	FUNC1(mpath, next_hop);
	mpath->sn = 0xffff;
	mpath->metric = 0;
	mpath->hop_count = 0;
	mpath->exp_time = 0;
	mpath->flags |= MESH_PATH_FIXED;
	FUNC0(mpath);
	FUNC4(&mpath->state_lock);
	FUNC2(mpath);
}