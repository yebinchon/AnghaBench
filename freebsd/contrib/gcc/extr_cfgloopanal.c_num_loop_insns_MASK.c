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
struct loop {unsigned int num_nodes; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct loop*) ; 

int
FUNC6 (struct loop *loop)
{
  basic_block *bbs, bb;
  unsigned i, ninsns = 0;
  rtx insn;

  bbs = FUNC5 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];
      ninsns++;
      for (insn = FUNC1 (bb); insn != FUNC0 (bb); insn = FUNC3 (insn))
	if (FUNC2 (insn))
	  ninsns++;
    }
  FUNC4(bbs);

  return ninsns;
}