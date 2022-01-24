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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tid_t ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct dir_table_slot {int slot; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Dirtable ; 
 int /*<<< orphan*/  FUNC0 (struct dir_table_slot*,int /*<<< orphan*/ ) ; 
 struct dir_table_slot* FUNC1 (struct inode*,int /*<<< orphan*/ ,struct metapage**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static void FUNC5(tid_t tid, struct inode *ip, u32 index, s64 bn,
			 int slot, struct metapage ** mp, s64 *lblock)
{
	struct dir_table_slot *dirtab_slot;

	dirtab_slot = FUNC1(ip, index, mp, lblock);

	if (!dirtab_slot)
		return;

	FUNC0(dirtab_slot, bn);
	dirtab_slot->slot = slot;

	if (*mp) {
		FUNC2(tid, ip, *mp, index);
		FUNC3(*mp);
	} else
		FUNC4(COMMIT_Dirtable, ip);
}