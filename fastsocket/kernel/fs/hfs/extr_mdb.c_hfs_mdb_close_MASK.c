#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  mdb_bh; TYPE_1__* mdb; } ;
struct TYPE_3__ {int /*<<< orphan*/  drAtrb; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFS_SB_ATTRIB_INCNSTNT ; 
 int /*<<< orphan*/  HFS_SB_ATTRIB_UNMNT ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct super_block *sb)
{
	/* update volume attributes */
	if (sb->s_flags & MS_RDONLY)
		return;
	FUNC0(sb)->mdb->drAtrb |= FUNC1(HFS_SB_ATTRIB_UNMNT);
	FUNC0(sb)->mdb->drAtrb &= FUNC1(~HFS_SB_ATTRIB_INCNSTNT);
	FUNC2(FUNC0(sb)->mdb_bh);
}