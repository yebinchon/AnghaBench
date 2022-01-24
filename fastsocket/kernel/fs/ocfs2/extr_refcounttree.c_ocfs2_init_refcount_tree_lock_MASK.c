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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_lockres; int /*<<< orphan*/  rf_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ocfs2_super *osb,
					struct ocfs2_refcount_tree *new,
					u64 rf_blkno, u32 generation)
{
	FUNC0(&new->rf_sem);
	FUNC1(&new->rf_lockres, osb,
				     rf_blkno, generation);
}