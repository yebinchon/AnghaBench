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
struct btrfsic_block_hashtable {scalar_t__ table; } ;
struct btrfsic_block {int dev_bytenr; int /*<<< orphan*/  collision_resolving_node; TYPE_1__* dev_state; } ;
struct TYPE_2__ {scalar_t__ bdev; } ;

/* Variables and functions */
 int BTRFSIC_BLOCK_HASHTABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct btrfsic_block *b,
					struct btrfsic_block_hashtable *h)
{
	const unsigned int hashval =
	    (((unsigned int)(b->dev_bytenr >> 16)) ^
	     ((unsigned int)((uintptr_t)b->dev_state->bdev))) &
	     (BTRFSIC_BLOCK_HASHTABLE_SIZE - 1);

	FUNC0(&b->collision_resolving_node, h->table + hashval);
}