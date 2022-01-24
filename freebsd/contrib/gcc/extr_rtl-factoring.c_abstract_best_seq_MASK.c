#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pattern_seq ;
struct TYPE_4__ {struct TYPE_4__* next_pattern_seq; int /*<<< orphan*/  link_reg; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* pattern_seqs ; 
 int* regs_ever_live ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (void)
{
  pattern_seq bestpseq;

  /* Do the abstraction.  */
  FUNC1 ();
  FUNC5 ();
  FUNC6 ();
  FUNC2 ();
  FUNC4 ();

  /* Record the usage of the link register.  */
  regs_ever_live[FUNC0 (pattern_seqs->link_reg)] = 1;

  /* Remove the best pattern sequence.  */
  bestpseq = pattern_seqs;
  pattern_seqs = bestpseq->next_pattern_seq;
  FUNC3 (bestpseq);
}