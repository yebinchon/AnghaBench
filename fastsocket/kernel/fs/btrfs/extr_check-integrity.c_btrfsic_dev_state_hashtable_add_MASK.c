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
struct btrfsic_dev_state_hashtable {scalar_t__ table; } ;
struct btrfsic_dev_state {int /*<<< orphan*/  collision_resolving_node; scalar_t__ bdev; } ;

/* Variables and functions */
 int BTRFSIC_DEV2STATE_HASHTABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC1(
		struct btrfsic_dev_state *ds,
		struct btrfsic_dev_state_hashtable *h)
{
	const unsigned int hashval =
	    (((unsigned int)((uintptr_t)ds->bdev)) &
	     (BTRFSIC_DEV2STATE_HASHTABLE_SIZE - 1));

	FUNC0(&ds->collision_resolving_node, h->table + hashval);
}