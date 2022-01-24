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
struct trace_seq {int dummy; } ;
struct trace_iterator {int /*<<< orphan*/  ent; struct trace_seq seq; } ;
struct ctx_switch_entry {int prev_pid; int prev_prio; int next_cpu; int next_pid; int next_prio; int /*<<< orphan*/  next_state; int /*<<< orphan*/  prev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int) ; 
 int TRACE_TYPE_HANDLED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx_switch_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct trace_iterator *iter, char S)
{
	struct ctx_switch_entry *field;
	struct trace_seq *s = &iter->seq;
	int T;

	FUNC2(field, iter->ent);

	if (!S)
		S = FUNC1(field->prev_state);
	T = FUNC1(field->next_state);

	FUNC0(s, field->prev_pid);
	FUNC0(s, field->prev_prio);
	FUNC0(s, S);
	FUNC0(s, field->next_cpu);
	FUNC0(s, field->next_pid);
	FUNC0(s, field->next_prio);
	FUNC0(s, T);

	return TRACE_TYPE_HANDLED;
}