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
struct ocfs2_extent_block {int /*<<< orphan*/  h_suballoc_bit; int /*<<< orphan*/  h_blkno; int /*<<< orphan*/  h_suballoc_slot; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_cached_dealloc_ctxt *ctxt,
					 struct ocfs2_extent_block *eb)
{
	return FUNC2(ctxt, EXTENT_ALLOC_SYSTEM_INODE,
					 FUNC0(eb->h_suballoc_slot),
					 FUNC1(eb->h_blkno),
					 FUNC0(eb->h_suballoc_bit));
}