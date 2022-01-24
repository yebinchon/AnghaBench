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
struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_authhdr {int /*<<< orphan*/  shkey_id; int /*<<< orphan*/  hmac_id; } ;
struct sctp_auth_chunk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  auth_capable; } ;
struct sctp_association {scalar_t__ active_key_id; TYPE_1__ peer; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int sctp_ierror_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_AUTH_NEWKEY ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_REPORT_BAD_TAG ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_ERROR_UNSUP_HMAC ; 
#define  SCTP_IERROR_AUTH_BAD_HMAC 132 
#define  SCTP_IERROR_AUTH_BAD_KEYID 131 
#define  SCTP_IERROR_BAD_SIG 130 
#define  SCTP_IERROR_NOMEM 129 
#define  SCTP_IERROR_PROTO_VIOLATION 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC11 (struct sctp_association const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC13(const struct sctp_endpoint *ep,
				    const struct sctp_association *asoc,
				    const sctp_subtype_t type,
				    void *arg,
				    sctp_cmd_seq_t *commands)
{
	struct sctp_authhdr *auth_hdr;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *err_chunk;
	sctp_ierror_t error;

	/* Make sure that the peer has AUTH capable */
	if (!asoc->peer.auth_capable)
		return FUNC9(ep, asoc, type, arg, commands);

	if (!FUNC12(chunk, asoc)) {
		FUNC4(commands, SCTP_CMD_REPORT_BAD_TAG,
				FUNC1());
		return FUNC8(ep, asoc, type, arg, commands);
	}

	/* Make sure that the AUTH chunk has valid length.  */
	if (!FUNC5(chunk, sizeof(struct sctp_auth_chunk)))
		return FUNC10(ep, asoc, type, arg,
						  commands);

	auth_hdr = (struct sctp_authhdr *)chunk->skb->data;
	error = FUNC7(ep, asoc, type, chunk);
	switch (error) {
		case SCTP_IERROR_AUTH_BAD_HMAC:
			/* Generate the ERROR chunk and discard the rest
			 * of the packet
			 */
			err_chunk = FUNC6(asoc, chunk,
							SCTP_ERROR_UNSUP_HMAC,
							&auth_hdr->hmac_id,
							sizeof(__u16), 0);
			if (err_chunk) {
				FUNC4(commands, SCTP_CMD_REPLY,
						FUNC0(err_chunk));
			}
			/* Fall Through */
		case SCTP_IERROR_AUTH_BAD_KEYID:
		case SCTP_IERROR_BAD_SIG:
			return FUNC8(ep, asoc, type, arg, commands);
			break;
		case SCTP_IERROR_PROTO_VIOLATION:
			return FUNC10(ep, asoc, type, arg,
							  commands);
			break;
		case SCTP_IERROR_NOMEM:
			return SCTP_DISPOSITION_NOMEM;
		default:
			break;
	}

	if (asoc->active_key_id != FUNC3(auth_hdr->shkey_id)) {
		struct sctp_ulpevent *ev;

		ev = FUNC11(asoc, FUNC3(auth_hdr->shkey_id),
				    SCTP_AUTH_NEWKEY, GFP_ATOMIC);

		if (!ev)
			return -ENOMEM;

		FUNC4(commands, SCTP_CMD_EVENT_ULP,
				FUNC2(ev));
	}

	return SCTP_DISPOSITION_CONSUME;
}