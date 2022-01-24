#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int /*<<< orphan*/  Command; int /*<<< orphan*/  Mid; } ;
struct mid_q_entry {int /*<<< orphan*/  mid_state; TYPE_1__* callback_data; int /*<<< orphan*/  callback; int /*<<< orphan*/  when_alloc; int /*<<< orphan*/  command; int /*<<< orphan*/  pid; int /*<<< orphan*/  mid; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  MID_REQUEST_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifs_mid_poolp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  jiffies ; 
 struct mid_q_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mid_q_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  midCount ; 
 int /*<<< orphan*/  wake_up_task ; 

struct mid_q_entry *
FUNC6(const struct smb_hdr *smb_buffer, struct TCP_Server_Info *server)
{
	struct mid_q_entry *temp;

	if (server == NULL) {
		FUNC1(1, "Null TCP session in AllocMidQEntry");
		return NULL;
	}

	temp = FUNC4(cifs_mid_poolp, GFP_NOFS);
	if (temp == NULL)
		return temp;
	else {
		FUNC5(temp, 0, sizeof(struct mid_q_entry));
		temp->mid = smb_buffer->Mid;	/* always LE */
		temp->pid = current->pid;
		temp->command = FUNC3(smb_buffer->Command);
		FUNC2(1, "For smb_command %d", smb_buffer->Command);
	/*	do_gettimeofday(&temp->when_sent);*/ /* easier to use jiffies */
		/* when mid allocated can be before when sent */
		temp->when_alloc = jiffies;

		/*
		 * The default is for the mid to be synchronous, so the
		 * default callback just wakes up the current task.
		 */
		temp->callback = wake_up_task;
		temp->callback_data = current;
	}

	FUNC0(&midCount);
	temp->mid_state = MID_REQUEST_ALLOCATED;
	return temp;
}