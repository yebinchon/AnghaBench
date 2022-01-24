#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct loop {unsigned int num_nodes; TYPE_1__* header; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {unsigned int frequency; } ;
struct TYPE_7__ {scalar_t__ frequency; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 unsigned int BB_FREQ_MAX ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 TYPE_2__** FUNC5 (struct loop*) ; 

int
FUNC6 (struct loop *loop)
{
  basic_block *bbs, bb;
  unsigned i, binsns, ninsns, ratio;
  rtx insn;

  ninsns = 0;
  bbs = FUNC5 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];

      binsns = 1;
      for (insn = FUNC1 (bb); insn != FUNC0 (bb); insn = FUNC3 (insn))
	if (FUNC2 (insn))
	  binsns++;

      ratio = loop->header->frequency == 0
	      ? BB_FREQ_MAX
	      : (bb->frequency * BB_FREQ_MAX) / loop->header->frequency;
      ninsns += binsns * ratio;
    }
  FUNC4(bbs);

  ninsns /= BB_FREQ_MAX;
  if (!ninsns)
    ninsns = 1; /* To avoid division by zero.  */

  return ninsns;
}