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
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {unsigned int error; } ;
struct sctp_association {TYPE_1__ outqueue; } ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CANT_STR_ASSOC ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC4 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(sctp_cmd_seq_t *commands,
				 struct sctp_association *asoc,
				 unsigned error)
{
	struct sctp_ulpevent *event;

	event = FUNC4(asoc,0, SCTP_CANT_STR_ASSOC,
						(__u16)error, 0, 0, NULL,
						GFP_ATOMIC);

	if (event)
		FUNC3(commands, SCTP_CMD_EVENT_ULP,
				FUNC2(event));

	FUNC3(commands, SCTP_CMD_NEW_STATE,
			FUNC1(SCTP_STATE_CLOSED));

	/* SEND_FAILED sent later when cleaning up the association. */
	asoc->outqueue.error = error;
	FUNC3(commands, SCTP_CMD_DELETE_TCB, FUNC0());
}