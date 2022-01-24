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
typedef  scalar_t__ u32 ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_leaf_clusters; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_extent_rec *left,
				  struct ocfs2_extent_rec *right)
{
	u32 left_range;

	left_range = FUNC1(left->e_cpos) +
		FUNC0(left->e_leaf_clusters);

	return (left_range == FUNC1(right->e_cpos));
}