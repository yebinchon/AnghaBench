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
struct insn_chain {scalar_t__ need_elim; scalar_t__ need_reload; scalar_t__ need_operand_change; scalar_t__ is_caller_save_insn; struct insn_chain* next; int /*<<< orphan*/  dead_or_set; int /*<<< orphan*/  live_throughout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct insn_chain* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  reload_obstack ; 
 struct insn_chain* unused_insn_chains ; 

struct insn_chain *
FUNC2 (void)
{
  struct insn_chain *c;

  if (unused_insn_chains == 0)
    {
      c = FUNC1 (&reload_obstack, sizeof (struct insn_chain));
      FUNC0 (&c->live_throughout);
      FUNC0 (&c->dead_or_set);
    }
  else
    {
      c = unused_insn_chains;
      unused_insn_chains = c->next;
    }
  c->is_caller_save_insn = 0;
  c->need_operand_change = 0;
  c->need_reload = 0;
  c->need_elim = 0;
  return c;
}