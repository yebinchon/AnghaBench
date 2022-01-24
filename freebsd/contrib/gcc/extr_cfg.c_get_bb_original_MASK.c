#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct htab_bb_copy_original_entry {int /*<<< orphan*/  index2; int /*<<< orphan*/  index1; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bb_original ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct htab_bb_copy_original_entry*) ; 
 int /*<<< orphan*/  original_copy_bb_pool ; 

basic_block
FUNC3 (basic_block bb)
{
  struct htab_bb_copy_original_entry *entry;
  struct htab_bb_copy_original_entry key;

  FUNC1 (original_copy_bb_pool);

  key.index1 = bb->index;
  entry = (struct htab_bb_copy_original_entry *) FUNC2 (bb_original, &key);
  if (entry)
    return FUNC0 (entry->index2);
  else
    return NULL;
}