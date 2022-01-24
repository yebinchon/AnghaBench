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
struct smd_channel {void (* notify ) (void*,unsigned int) ;TYPE_2__* send; TYPE_1__* recv; int /*<<< orphan*/  ch_list; void* priv; int /*<<< orphan*/  last_state; scalar_t__ current_packet; } ;
typedef  struct smd_channel smd_channel_t ;
struct TYPE_4__ {scalar_t__ head; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SMD_SS_CLOSED ; 
 scalar_t__ SMD_SS_CLOSING ; 
 int /*<<< orphan*/  SMD_SS_OPENED ; 
 int /*<<< orphan*/  SMD_SS_OPENING ; 
 void FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  smd_ch_list ; 
 struct smd_channel* FUNC4 (char const*) ; 
 scalar_t__ smd_initialized ; 
 int /*<<< orphan*/  FUNC5 (struct smd_channel*) ; 
 int /*<<< orphan*/  smd_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(const char *name, smd_channel_t **_ch,
	     void *priv, void (*notify)(void *, unsigned))
{
	struct smd_channel *ch;
	unsigned long flags;

	if (smd_initialized == 0) {
		FUNC3("smd_open() before smd_init()\n");
		return -ENODEV;
	}

	ch = FUNC4(name);
	if (!ch)
		return -ENODEV;

	if (notify == 0)
		notify = do_nothing_notify;

	ch->notify = notify;
	ch->current_packet = 0;
	ch->last_state = SMD_SS_CLOSED;
	ch->priv = priv;

	*_ch = ch;

	FUNC6(&smd_lock, flags);
	FUNC2(&ch->ch_list, &smd_ch_list);

	/* If the remote side is CLOSING, we need to get it to
	 * move to OPENING (which we'll do by moving from CLOSED to
	 * OPENING) and then get it to move from OPENING to
	 * OPENED (by doing the same state change ourselves).
	 *
	 * Otherwise, it should be OPENING and we can move directly
	 * to OPENED so that it will follow.
	 */
	if (ch->recv->state == SMD_SS_CLOSING) {
		ch->send->head = 0;
		FUNC1(ch->send, SMD_SS_OPENING);
	} else {
		FUNC1(ch->send, SMD_SS_OPENED);
	}
	FUNC7(&smd_lock, flags);
	FUNC5(ch);

	return 0;
}