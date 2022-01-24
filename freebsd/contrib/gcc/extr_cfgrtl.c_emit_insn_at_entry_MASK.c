#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  edge_iterator ;
typedef  TYPE_1__* edge ;
struct TYPE_6__ {int /*<<< orphan*/  succs; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int EDGE_FALLTHRU ; 
 TYPE_4__* ENTRY_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC5 (rtx insn)
{
  edge_iterator ei = FUNC2 (ENTRY_BLOCK_PTR->succs);
  edge e = FUNC1 (ei);
  FUNC3 (e->flags & EDGE_FALLTHRU);

  FUNC4 (insn, e);
  FUNC0 ();
}