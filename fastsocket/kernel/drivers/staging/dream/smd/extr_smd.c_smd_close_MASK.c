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
struct TYPE_4__ {int /*<<< orphan*/  ch_list; int /*<<< orphan*/  send; int /*<<< orphan*/  notify; } ;
typedef  TYPE_1__ smd_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  SMD_SS_CLOSED ; 
 int /*<<< orphan*/  do_nothing_notify ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  smd_ch_closed_list ; 
 int /*<<< orphan*/  smd_creation_mutex ; 
 int /*<<< orphan*/  smd_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(smd_channel_t *ch)
{
	unsigned long flags;

	FUNC5("smd_close(%p)\n", ch);

	if (ch == 0)
		return -1;

	FUNC6(&smd_lock, flags);
	ch->notify = do_nothing_notify;
	FUNC2(&ch->ch_list);
	FUNC0(ch->send, SMD_SS_CLOSED);
	FUNC7(&smd_lock, flags);

	FUNC3(&smd_creation_mutex);
	FUNC1(&ch->ch_list, &smd_ch_closed_list);
	FUNC4(&smd_creation_mutex);

	return 0;
}