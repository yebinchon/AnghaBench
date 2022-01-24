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
struct TYPE_2__ {int client; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ source; } ;
struct snd_seq_client {int /*<<< orphan*/  accept_output; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ SNDRV_SEQ_EVENT_KERNEL_ERROR ; 
 scalar_t__ SNDRV_SEQ_EVENT_NONE ; 
 scalar_t__ FUNC0 (struct snd_seq_event*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_seq_client*,struct snd_seq_event*,struct file*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int client, struct snd_seq_event *ev,
				 struct file *file, int blocking,
				 int atomic, int hop)
{
	struct snd_seq_client *cptr;
	int result;

	if (FUNC1(!ev))
		return -EINVAL;

	if (ev->type == SNDRV_SEQ_EVENT_NONE)
		return 0; /* ignore this */
	if (ev->type == SNDRV_SEQ_EVENT_KERNEL_ERROR)
		return -EINVAL; /* quoted events can't be enqueued */

	/* fill in client number */
	ev->source.client = client;

	if (FUNC0(ev))
		return -EINVAL;

	cptr = FUNC4(client);
	if (cptr == NULL)
		return -EINVAL;
	
	if (! cptr->accept_output)
		result = -EPERM;
	else /* send it */
		result = FUNC2(cptr, ev, file, blocking, atomic, hop);

	FUNC3(cptr);
	return result;
}