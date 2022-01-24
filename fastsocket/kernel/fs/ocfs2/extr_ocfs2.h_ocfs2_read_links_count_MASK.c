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
typedef  unsigned int u32 ;
struct ocfs2_dinode {int i_dyn_features; int /*<<< orphan*/  i_links_count_hi; int /*<<< orphan*/  i_links_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_INDEXED_DIR_FL ; 
 unsigned int OCFS2_LINKS_HI_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct ocfs2_dinode *di)
{
	u32 nlink = FUNC1(di->i_links_count);
	u32 hi = FUNC1(di->i_links_count_hi);

	if (di->i_dyn_features & FUNC0(OCFS2_INDEXED_DIR_FL))
		nlink |= (hi << OCFS2_LINKS_HI_SHIFT);

	return nlink;
}