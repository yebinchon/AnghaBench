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
struct sctp_ulpq {scalar_t__ pd_mode; struct sctp_association* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int /*<<< orphan*/  pd_mode; scalar_t__ frag_interleave; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC2 (struct sctp_ulpq*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpq*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 

void FUNC5(struct sctp_ulpq *ulpq,
				struct sctp_chunk *chunk,
				gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_association *asoc;
	struct sctp_sock *sp;

	asoc = ulpq->asoc;
	sp = FUNC1(asoc->base.sk);

	/* If the association is already in Partial Delivery mode
	 * we have noting to do.
	 */
	if (ulpq->pd_mode)
		return;

	/* If the user enabled fragment interleave socket option,
	 * multiple associations can enter partial delivery.
	 * Otherwise, we can only enter partial delivery if the
	 * socket is not in partial deliver mode.
	 */
	if (sp->frag_interleave || FUNC0(&sp->pd_mode) == 0) {
		/* Is partial delivery possible?  */
		event = FUNC2(ulpq);
		/* Send event to the ULP.   */
		if (event) {
			FUNC4(ulpq, event);
			FUNC3(ulpq);
			return;
		}
	}
}