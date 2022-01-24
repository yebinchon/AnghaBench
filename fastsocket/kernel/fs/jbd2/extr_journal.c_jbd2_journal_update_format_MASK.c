#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* j_superblock; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_8__ {int /*<<< orphan*/  h_blocktype; } ;
struct TYPE_10__ {TYPE_1__ s_header; } ;
typedef  TYPE_3__ journal_superblock_t ;

/* Variables and functions */
 int EINVAL ; 
#define  JBD2_SUPERBLOCK_V1 129 
#define  JBD2_SUPERBLOCK_V2 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*) ; 

int FUNC3 (journal_t *journal)
{
	journal_superblock_t *sb;
	int err;

	err = FUNC2(journal);
	if (err)
		return err;

	sb = journal->j_superblock;

	switch (FUNC0(sb->s_header.h_blocktype)) {
	case JBD2_SUPERBLOCK_V2:
		return 0;
	case JBD2_SUPERBLOCK_V1:
		return FUNC1(journal, sb);
	default:
		break;
	}
	return -EINVAL;
}