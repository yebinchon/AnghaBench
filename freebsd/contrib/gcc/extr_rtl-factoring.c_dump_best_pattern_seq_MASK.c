#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* matching_seq ;
struct TYPE_4__ {int gain; int abstracted_length; int /*<<< orphan*/  link_reg; TYPE_1__* matching_seqs; int /*<<< orphan*/  insn; } ;
struct TYPE_3__ {int abstracted_length; struct TYPE_3__* next_matching_seq; int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* pattern_seqs ; 

__attribute__((used)) static void
FUNC3 (int iter)
{
  matching_seq mseq;

  if (!dump_file)
    return;

  FUNC2 (dump_file, ";; Iteration %d\n", iter);
  FUNC2 (dump_file,
           "Best pattern sequence with %d gain is at insn %d (length %d).\n",
           pattern_seqs->gain, FUNC0 (pattern_seqs->insn),
           pattern_seqs->abstracted_length);
  FUNC2 (dump_file, "Matching sequences are at");
  for (mseq = pattern_seqs->matching_seqs; mseq;
       mseq = mseq->next_matching_seq)
    {
      FUNC2 (dump_file, " insn %d (length %d)", FUNC0 (mseq->insn),
               mseq->abstracted_length);
      if (mseq->next_matching_seq)
        FUNC2 (dump_file, ",");
    }
  FUNC2 (dump_file, ".\n");
  FUNC2 (dump_file, "Using reg %d as link register.\n\n",
           FUNC1 (pattern_seqs->link_reg));
}