#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sctp_verb_t ;
struct TYPE_5__ {size_t next_free_slot; TYPE_1__* cmds; } ;
typedef  TYPE_2__ sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_arg_t ;
struct TYPE_4__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SCTP_MAX_NUM_COMMANDS ; 

void FUNC1(sctp_cmd_seq_t *seq, sctp_verb_t verb, sctp_arg_t obj)
{
	FUNC0(seq->next_free_slot >= SCTP_MAX_NUM_COMMANDS);

	seq->cmds[seq->next_free_slot].verb = verb;
	seq->cmds[seq->next_free_slot++].obj = obj;
}