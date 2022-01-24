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
struct sctp_transport {int /*<<< orphan*/  hb_timer; } ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*) ; 

__attribute__((used)) static void FUNC3(sctp_cmd_seq_t *cmds,
				     struct sctp_transport *t)
{
	/* Update the heartbeat timer.  */
	if (!FUNC0(&t->hb_timer, FUNC2(t)))
		FUNC1(t);
}