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
struct smd_channel {unsigned int last_state; int /*<<< orphan*/  priv; int /*<<< orphan*/  (* notify ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* send; TYPE_1__* recv; int /*<<< orphan*/  n; } ;
struct TYPE_4__ {int const state; } ;
struct TYPE_3__ {int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMD_EVENT_CLOSE ; 
 int /*<<< orphan*/  SMD_EVENT_OPEN ; 
#define  SMD_SS_FLUSHING 131 
#define  SMD_SS_OPENED 130 
#define  SMD_SS_OPENING 129 
#define  SMD_SS_RESET 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct smd_channel *ch,
			     unsigned last, unsigned next)
{
	ch->last_state = next;

	FUNC2("SMD: ch %d %s -> %s\n", ch->n,
		FUNC0(last), FUNC0(next));

	switch (next) {
	case SMD_SS_OPENING:
		ch->recv->tail = 0;
	case SMD_SS_OPENED:
		if (ch->send->state != SMD_SS_OPENED)
			FUNC1(ch->send, SMD_SS_OPENED);
		ch->notify(ch->priv, SMD_EVENT_OPEN);
		break;
	case SMD_SS_FLUSHING:
	case SMD_SS_RESET:
		/* we should force them to close? */
	default:
		ch->notify(ch->priv, SMD_EVENT_CLOSE);
	}
}