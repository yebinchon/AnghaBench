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
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  adaptation_ind; } ;
struct sctp_association {TYPE_1__ peer; } ;
struct sctp_adaptation_event {int sai_length; int /*<<< orphan*/  sai_assoc_id; int /*<<< orphan*/  sai_adaptation_ind; scalar_t__ sai_flags; int /*<<< orphan*/  sai_type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_ADAPTATION_INDICATION ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association const*) ; 
 struct sk_buff* FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 

struct sctp_ulpevent *FUNC5(
	const struct sctp_association *asoc, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_adaptation_event *sai;
	struct sk_buff *skb;

	event = FUNC2(sizeof(struct sctp_adaptation_event),
				  MSG_NOTIFICATION, gfp);
	if (!event)
		goto fail;

	skb = FUNC1(event);
	sai = (struct sctp_adaptation_event *)
		FUNC4(skb, sizeof(struct sctp_adaptation_event));

	sai->sai_type = SCTP_ADAPTATION_INDICATION;
	sai->sai_flags = 0;
	sai->sai_length = sizeof(struct sctp_adaptation_event);
	sai->sai_adaptation_ind = asoc->peer.adaptation_ind;
	FUNC3(event, asoc);
	sai->sai_assoc_id = FUNC0(asoc);

	return event;

fail:
	return NULL;
}