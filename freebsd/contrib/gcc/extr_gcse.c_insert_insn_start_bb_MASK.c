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
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NOTE_INSN_BASIC_BLOCK ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC10 (rtx insn, basic_block bb)
{
  /* Insert at start of successor block.  */
  rtx prev = FUNC6 (FUNC1 (bb));
  rtx before = FUNC1 (bb);
  while (before != 0)
    {
      if (! FUNC2 (before)
	  && (! FUNC5 (before)
	      || FUNC4 (before) != NOTE_INSN_BASIC_BLOCK))
	break;
      prev = before;
      if (prev == FUNC0 (bb))
	break;
      before = FUNC3 (before);
    }

  insn = FUNC7 (insn, prev);

  if (dump_file)
    {
      FUNC8 (dump_file, "STORE_MOTION  insert store at start of BB %d:\n",
	       bb->index);
      FUNC9 (dump_file, insn, 6);
      FUNC8 (dump_file, "\n");
    }
}