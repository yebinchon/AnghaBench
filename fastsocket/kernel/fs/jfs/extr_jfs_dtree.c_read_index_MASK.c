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
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct dir_table_slot {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int EIO ; 
 struct dir_table_slot* FUNC0 (struct inode*,int /*<<< orphan*/ ,struct metapage**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_table_slot*,struct dir_table_slot*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct metapage*) ; 

__attribute__((used)) static int FUNC3(struct inode *ip, u32 index,
		     struct dir_table_slot * dirtab_slot)
{
	s64 lblock;
	struct metapage *mp = NULL;
	struct dir_table_slot *slot;

	slot = FUNC0(ip, index, &mp, &lblock);
	if (!slot) {
		return -EIO;
	}

	FUNC1(dirtab_slot, slot, sizeof(struct dir_table_slot));

	if (mp)
		FUNC2(mp);

	return 0;
}