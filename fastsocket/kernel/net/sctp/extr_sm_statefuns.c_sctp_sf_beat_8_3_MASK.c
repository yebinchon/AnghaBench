#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_endpoint {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * hb_hdr; } ;
struct sctp_chunk {TYPE_6__* skb; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_3__ sctp_paramhdr_t ;
typedef  int /*<<< orphan*/  sctp_heartbeathdr_t ;
typedef  int /*<<< orphan*/  sctp_heartbeat_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association const*,struct sctp_chunk*,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC10(const struct sctp_endpoint *ep,
				    const struct sctp_association *asoc,
				    const sctp_subtype_t type,
				    void *arg,
				    sctp_cmd_seq_t *commands)
{
	sctp_paramhdr_t *param_hdr;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *reply;
	size_t paylen = 0;

	if (!FUNC9(chunk, asoc))
		return FUNC6(ep, asoc, type, arg, commands);

	/* Make sure that the HEARTBEAT chunk has a valid length. */
	if (!FUNC4(chunk, sizeof(sctp_heartbeat_chunk_t)))
		return FUNC7(ep, asoc, type, arg,
						  commands);

	/* 8.3 The receiver of the HEARTBEAT should immediately
	 * respond with a HEARTBEAT ACK that contains the Heartbeat
	 * Information field copied from the received HEARTBEAT chunk.
	 */
	chunk->subh.hb_hdr = (sctp_heartbeathdr_t *) chunk->skb->data;
	param_hdr = (sctp_paramhdr_t *) chunk->subh.hb_hdr;
	paylen = FUNC1(chunk->chunk_hdr->length) - sizeof(sctp_chunkhdr_t);

	if (FUNC1(param_hdr->length) > paylen)
		return FUNC8(ep, asoc, type, arg,
						  param_hdr, commands);

	if (!FUNC2(chunk->skb, paylen))
		goto nomem;

	reply = FUNC5(asoc, chunk, param_hdr, paylen);
	if (!reply)
		goto nomem;

	FUNC3(commands, SCTP_CMD_REPLY, FUNC0(reply));
	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}