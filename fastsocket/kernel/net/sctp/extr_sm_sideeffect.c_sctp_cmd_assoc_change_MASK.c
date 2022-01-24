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
typedef  int /*<<< orphan*/  u8 ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sinit_max_instreams; int /*<<< orphan*/  sinit_num_ostreams; } ;
struct sctp_association {int /*<<< orphan*/  ulpq; TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sctp_ulpevent* FUNC0 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctp_ulpevent*) ; 

__attribute__((used)) static void FUNC2(sctp_cmd_seq_t *commands,
				 struct sctp_association *asoc,
				 u8 state)
{
	struct sctp_ulpevent *ev;

	ev = FUNC0(asoc, 0, state, 0,
					    asoc->c.sinit_num_ostreams,
					    asoc->c.sinit_max_instreams,
					    NULL, GFP_ATOMIC);
	if (ev)
		FUNC1(&asoc->ulpq, ev);
}