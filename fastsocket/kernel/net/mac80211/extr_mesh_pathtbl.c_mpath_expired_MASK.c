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
struct mesh_path {int flags; int /*<<< orphan*/  exp_time; } ;

/* Variables and functions */
 int MESH_PATH_ACTIVE ; 
 int MESH_PATH_FIXED ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct mesh_path *mpath)
{
	return (mpath->flags & MESH_PATH_ACTIVE) &&
	       FUNC0(jiffies, mpath->exp_time) &&
	       !(mpath->flags & MESH_PATH_FIXED);
}