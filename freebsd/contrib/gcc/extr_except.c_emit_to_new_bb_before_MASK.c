#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  edge_iterator ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_11__ {int /*<<< orphan*/  prev_bb; int /*<<< orphan*/  preds; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BB_SUPERBLOCK ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ) ; 
 int EDGE_FALLTHRU ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static basic_block
FUNC10 (rtx seq, rtx insn)
{
  rtx last;
  basic_block bb;
  edge e;
  edge_iterator ei;

  /* If there happens to be a fallthru edge (possibly created by cleanup_cfg
     call), we don't want it to go into newly created landing pad or other EH
     construct.  */
  for (ei = FUNC6 (FUNC1 (insn)->preds); (e = FUNC5 (ei)); )
    if (e->flags & EDGE_FALLTHRU)
      FUNC8 (e);
    else
      FUNC4 (&ei);
  last = FUNC7 (seq, insn);
  if (FUNC0 (last))
    last = FUNC2 (last);
  bb = FUNC3 (seq, last, FUNC1 (insn)->prev_bb);
  FUNC9 (bb);
  bb->flags |= BB_SUPERBLOCK;
  return bb;
}