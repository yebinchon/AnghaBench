#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_remote_error {int /*<<< orphan*/  sre_assoc_id; int /*<<< orphan*/  sre_error; int /*<<< orphan*/  sre_length; scalar_t__ sre_flags; int /*<<< orphan*/  sre_type; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  cause; } ;
typedef  TYPE_1__ sctp_errhdr_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_REMOTE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_association const*) ; 
 struct sctp_ulpevent* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 struct sk_buff* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

struct sctp_ulpevent *FUNC10(
	const struct sctp_association *asoc, struct sctp_chunk *chunk,
	__u16 flags, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_remote_error *sre;
	struct sk_buff *skb;
	sctp_errhdr_t *ch;
	__be16 cause;
	int elen;

	ch = (sctp_errhdr_t *)(chunk->skb->data);
	cause = ch->cause;
	elen = FUNC0(FUNC1(ch->length)) - sizeof(sctp_errhdr_t);

	/* Pull off the ERROR header.  */
	FUNC7(chunk->skb, sizeof(sctp_errhdr_t));

	/* Copy the skb to a new skb with room for us to prepend
	 * notification with.
	 */
	skb = FUNC6(chunk->skb, sizeof(struct sctp_remote_error),
			      0, gfp);

	/* Pull off the rest of the cause TLV from the chunk.  */
	FUNC7(chunk->skb, elen);
	if (!skb)
		goto fail;

	/* Embed the event fields inside the cloned skb.  */
	event = FUNC3(skb);
	FUNC4(event, MSG_NOTIFICATION, skb->truesize);

	sre = (struct sctp_remote_error *)
		FUNC8(skb, sizeof(struct sctp_remote_error));

	/* Trim the buffer to the right length.  */
	FUNC9(skb, sizeof(struct sctp_remote_error) + elen);

	/* Socket Extensions for SCTP
	 * 5.3.1.3 SCTP_REMOTE_ERROR
	 *
	 * sre_type:
	 *   It should be SCTP_REMOTE_ERROR.
	 */
	sre->sre_type = SCTP_REMOTE_ERROR;

	/*
	 * Socket Extensions for SCTP
	 * 5.3.1.3 SCTP_REMOTE_ERROR
	 *
	 * sre_flags: 16 bits (unsigned integer)
	 *   Currently unused.
	 */
	sre->sre_flags = 0;

	/* Socket Extensions for SCTP
	 * 5.3.1.3 SCTP_REMOTE_ERROR
	 *
	 * sre_length: sizeof (__u32)
	 *
	 * This field is the total length of the notification data,
	 * including the notification header.
	 */
	sre->sre_length = skb->len;

	/* Socket Extensions for SCTP
	 * 5.3.1.3 SCTP_REMOTE_ERROR
	 *
	 * sre_error: 16 bits (unsigned integer)
	 * This value represents one of the Operational Error causes defined in
	 * the SCTP specification, in network byte order.
	 */
	sre->sre_error = cause;

	/* Socket Extensions for SCTP
	 * 5.3.1.3 SCTP_REMOTE_ERROR
	 *
	 * sre_assoc_id: sizeof (sctp_assoc_t)
	 *
	 * The association id field, holds the identifier for the association.
	 * All notifications for a given association have the same association
	 * identifier.  For TCP style socket, this field is ignored.
	 */
	FUNC5(event, asoc);
	sre->sre_assoc_id = FUNC2(asoc);

	return event;

fail:
	return NULL;
}