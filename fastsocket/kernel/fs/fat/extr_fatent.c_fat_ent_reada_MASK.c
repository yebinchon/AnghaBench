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
struct super_block {int dummy; } ;
struct fatent_operations {int /*<<< orphan*/  (* ent_blocknr ) (struct super_block*,int /*<<< orphan*/ ,int*,scalar_t__*) ;} ;
struct fat_entry {int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct fatent_operations* fatent_ops; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,int*,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb, struct fat_entry *fatent,
			  unsigned long reada_blocks)
{
	struct fatent_operations *ops = FUNC0(sb)->fatent_ops;
	sector_t blocknr;
	int i, offset;

	ops->ent_blocknr(sb, fatent->entry, &offset, &blocknr);

	for (i = 0; i < reada_blocks; i++)
		FUNC1(sb, blocknr + i);
}