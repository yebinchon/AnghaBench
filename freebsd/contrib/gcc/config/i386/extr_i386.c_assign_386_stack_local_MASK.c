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
struct stack_local_entry {int mode; int n; int /*<<< orphan*/  rtl; struct stack_local_entry* next; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum ix86_stack_slot { ____Placeholder_ix86_stack_slot } ix86_stack_slot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_386_STACK_LOCALS ; 
 int SLOT_VIRTUAL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 struct stack_local_entry* ix86_stack_locals ; 
 int /*<<< orphan*/  virtuals_instantiated ; 

rtx
FUNC4 (enum machine_mode mode, enum ix86_stack_slot n)
{
  struct stack_local_entry *s;

  FUNC2 (n < MAX_386_STACK_LOCALS);

  /* Virtual slot is valid only before vregs are instantiated.  */
  FUNC2 ((n == SLOT_VIRTUAL) == !virtuals_instantiated);

  for (s = ix86_stack_locals; s; s = s->next)
    if (s->mode == mode && s->n == n)
      return s->rtl;

  s = (struct stack_local_entry *)
    FUNC3 (sizeof (struct stack_local_entry));
  s->n = n;
  s->mode = mode;
  s->rtl = FUNC1 (mode, FUNC0 (mode), 0);

  s->next = ix86_stack_locals;
  ix86_stack_locals = s;
  return s->rtl;
}