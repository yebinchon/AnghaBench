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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  NDFA_time ; 
 int /*<<< orphan*/  NDFA_to_DFA_time ; 
 int /*<<< orphan*/  automaton_generation_time ; 
 int /*<<< orphan*/  equiv_time ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  minimize_time ; 
 scalar_t__ ndfa_flag ; 
 int /*<<< orphan*/  output_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transform_time ; 

__attribute__((used)) static void
FUNC2 (FILE *f)
{
  FUNC0 (f, "\n  transformation: ");
  FUNC1 (f, transform_time);
  FUNC0 (f, (!ndfa_flag ? ", building DFA: " : ", building NDFA: "));
  FUNC1 (f, NDFA_time);
  if (ndfa_flag)
    {
      FUNC0 (f, ", NDFA -> DFA: ");
      FUNC1 (f, NDFA_to_DFA_time);
    }
  FUNC0 (f, "\n  DFA minimization: ");
  FUNC1 (f, minimize_time);
  FUNC0 (f, ", making insn equivalence: ");
  FUNC1 (f, equiv_time);
  FUNC0 (f, "\n all automaton generation: ");
  FUNC1 (f, automaton_generation_time);
  FUNC0 (f, ", output: ");
  FUNC1 (f, output_time);
  FUNC0 (f, "\n");
}