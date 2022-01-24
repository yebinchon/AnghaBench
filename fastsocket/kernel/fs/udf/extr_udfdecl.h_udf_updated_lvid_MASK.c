#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_dirt; } ;
struct logicalVolIntegrityDesc {scalar_t__ integrityType; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LVID_INTEGRITY_TYPE_OPEN ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct super_block *sb)
{
	struct buffer_head *bh = FUNC1(sb)->s_lvid_bh;

	FUNC0(!bh);
	FUNC2(((struct logicalVolIntegrityDesc *)
		     bh->b_data)->integrityType !=
		     FUNC3(LVID_INTEGRITY_TYPE_OPEN));
	sb->s_dirt = 1;
	FUNC1(sb)->s_lvid_dirty = 1;
}