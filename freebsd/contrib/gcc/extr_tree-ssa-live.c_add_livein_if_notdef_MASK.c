#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* tree_live_info_p ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  TYPE_2__* basic_block ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int /*<<< orphan*/  global; int /*<<< orphan*/ * livein; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 TYPE_2__* ENTRY_BLOCK_PTR ; 
 int NO_PARTITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3 (tree_live_info_p live, bitmap def_vec,
		      tree var, basic_block bb)
{
  int p = FUNC2 (live->map, var);
  if (p == NO_PARTITION || bb == ENTRY_BLOCK_PTR)
    return;
  if (!FUNC0 (def_vec, p))
    {
      FUNC1 (live->livein[p], bb->index);
      FUNC1 (live->global, p);
    }
}