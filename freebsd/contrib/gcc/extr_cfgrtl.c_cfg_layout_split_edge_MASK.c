#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_5__* edge ;
typedef  TYPE_6__* basic_block ;
struct TYPE_16__ {TYPE_1__* rtl; } ;
struct TYPE_20__ {TYPE_2__ il; } ;
struct TYPE_19__ {scalar_t__ src; TYPE_10__* dest; } ;
struct TYPE_18__ {TYPE_3__* rtl; } ;
struct TYPE_17__ {int /*<<< orphan*/  global_live_at_start; } ;
struct TYPE_15__ {void* global_live_at_end; void* global_live_at_start; } ;
struct TYPE_14__ {TYPE_4__ il; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  reg_obstack ; 

__attribute__((used)) static basic_block
FUNC8 (edge e)
{
  basic_block new_bb =
    FUNC4 (e->src != ENTRY_BLOCK_PTR
			? FUNC3 (FUNC1 (e->src)) : FUNC5 (),
			NULL_RTX, e->src);

  /* ??? This info is likely going to be out of date very soon, but we must
     create it to avoid getting an ICE later.  */
  if (e->dest->il.rtl->global_live_at_start)
    {
      new_bb->il.rtl->global_live_at_start = FUNC0 (&reg_obstack);
      new_bb->il.rtl->global_live_at_end = FUNC0 (&reg_obstack);
      FUNC2 (new_bb->il.rtl->global_live_at_start,
		    e->dest->il.rtl->global_live_at_start);
      FUNC2 (new_bb->il.rtl->global_live_at_end,
		    e->dest->il.rtl->global_live_at_start);
    }

  FUNC6 (new_bb, e->dest, EDGE_FALLTHRU);
  FUNC7 (e, new_bb);

  return new_bb;
}