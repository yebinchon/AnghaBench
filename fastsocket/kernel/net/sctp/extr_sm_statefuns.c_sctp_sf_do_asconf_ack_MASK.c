#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_5__ {scalar_t__ addip_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; scalar_t__ chunk_end; TYPE_1__* skb; int /*<<< orphan*/  auth; } ;
struct sctp_association {scalar_t__ addip_serial; struct sctp_chunk* addip_last_asconf; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_paramhdr_t ;
typedef  int /*<<< orphan*/  sctp_errhdr_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_6__ {int /*<<< orphan*/  serial; scalar_t__ params; } ;
typedef  TYPE_3__ sctp_addiphdr_t ;
typedef  int /*<<< orphan*/  sctp_addip_chunk_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_DISCARD_PACKET ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_REPORT_BAD_TAG ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_NEXT_ASCONF ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DISCARD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_ASCONF_ACK ; 
 int /*<<< orphan*/  SCTP_ERROR_RSRC_LOW ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T4_RTO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_addip_noauth ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC12 (struct sctp_association const*,struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_association*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_association const*,int /*<<< orphan*/ *,void*,struct sctp_paramhdr**) ; 
 int /*<<< orphan*/  FUNC19 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC20(const struct sctp_endpoint *ep,
					 const struct sctp_association *asoc,
					 const sctp_subtype_t type, void *arg,
					 sctp_cmd_seq_t *commands)
{
	struct sctp_chunk	*asconf_ack = arg;
	struct sctp_chunk	*last_asconf = asoc->addip_last_asconf;
	struct sctp_chunk	*abort;
	struct sctp_paramhdr	*err_param = NULL;
	sctp_addiphdr_t		*addip_hdr;
	__u32			sent_serial, rcvd_serial;

	if (!FUNC19(asconf_ack, asoc)) {
		FUNC9(commands, SCTP_CMD_REPORT_BAD_TAG,
				FUNC5());
		return FUNC15(ep, asoc, type, arg, commands);
	}

	/* ADD-IP, Section 4.1.2:
	 * This chunk MUST be sent in an authenticated way by using
	 * the mechanism defined in [I-D.ietf-tsvwg-sctp-auth]. If this chunk
	 * is received unauthenticated it MUST be silently discarded as
	 * described in [I-D.ietf-tsvwg-sctp-auth].
	 */
	if (!sctp_addip_noauth && !asconf_ack->auth)
		return FUNC14(ep, asoc, type, arg, commands);

	/* Make sure that the ADDIP chunk has a valid length.  */
	if (!FUNC10(asconf_ack, sizeof(sctp_addip_chunk_t)))
		return FUNC16(ep, asoc, type, arg,
						  commands);

	addip_hdr = (sctp_addiphdr_t *)asconf_ack->skb->data;
	rcvd_serial = FUNC8(addip_hdr->serial);

	/* Verify the ASCONF-ACK chunk before processing it. */
	if (!FUNC18(asoc,
	    (sctp_paramhdr_t *)addip_hdr->params,
	    (void *)asconf_ack->chunk_end,
	    &err_param))
		return FUNC17(ep, asoc, type, arg,
			   (void *)err_param, commands);

	if (last_asconf) {
		addip_hdr = (sctp_addiphdr_t *)last_asconf->subh.addip_hdr;
		sent_serial = FUNC8(addip_hdr->serial);
	} else {
		sent_serial = asoc->addip_serial - 1;
	}

	/* D0) If an endpoint receives an ASCONF-ACK that is greater than or
	 * equal to the next serial number to be used but no ASCONF chunk is
	 * outstanding the endpoint MUST ABORT the association. Note that a
	 * sequence number is greater than if it is no more than 2^^31-1
	 * larger than the current sequence number (using serial arithmetic).
	 */
	if (FUNC0(rcvd_serial, sent_serial + 1) &&
	    !(asoc->addip_last_asconf)) {
		abort = FUNC12(asoc, asconf_ack,
					sizeof(sctp_errhdr_t));
		if (abort) {
			FUNC11(abort, SCTP_ERROR_ASCONF_ACK, 0);
			FUNC9(commands, SCTP_CMD_REPLY,
					FUNC1(abort));
		}
		/* We are going to ABORT, so we might as well stop
		 * processing the rest of the chunks in the packet.
		 */
		FUNC9(commands, SCTP_CMD_TIMER_STOP,
				FUNC7(SCTP_EVENT_TIMEOUT_T4_RTO));
		FUNC9(commands, SCTP_CMD_DISCARD_PACKET,FUNC5());
		FUNC9(commands, SCTP_CMD_SET_SK_ERR,
				FUNC3(ECONNABORTED));
		FUNC9(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC6(SCTP_ERROR_ASCONF_ACK));
		FUNC4(SCTP_MIB_ABORTEDS);
		FUNC2(SCTP_MIB_CURRESTAB);
		return SCTP_DISPOSITION_ABORT;
	}

	if ((rcvd_serial == sent_serial) && asoc->addip_last_asconf) {
		FUNC9(commands, SCTP_CMD_TIMER_STOP,
				FUNC7(SCTP_EVENT_TIMEOUT_T4_RTO));

		if (!FUNC13((struct sctp_association *)asoc,
					     asconf_ack)) {
			/* Successfully processed ASCONF_ACK.  We can
			 * release the next asconf if we have one.
			 */
			FUNC9(commands, SCTP_CMD_SEND_NEXT_ASCONF,
					FUNC5());
			return SCTP_DISPOSITION_CONSUME;
		}

		abort = FUNC12(asoc, asconf_ack,
					sizeof(sctp_errhdr_t));
		if (abort) {
			FUNC11(abort, SCTP_ERROR_RSRC_LOW, 0);
			FUNC9(commands, SCTP_CMD_REPLY,
					FUNC1(abort));
		}
		/* We are going to ABORT, so we might as well stop
		 * processing the rest of the chunks in the packet.
		 */
		FUNC9(commands, SCTP_CMD_DISCARD_PACKET,FUNC5());
		FUNC9(commands, SCTP_CMD_SET_SK_ERR,
				FUNC3(ECONNABORTED));
		FUNC9(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC6(SCTP_ERROR_ASCONF_ACK));
		FUNC4(SCTP_MIB_ABORTEDS);
		FUNC2(SCTP_MIB_CURRESTAB);
		return SCTP_DISPOSITION_ABORT;
	}

	return SCTP_DISPOSITION_DISCARD;
}