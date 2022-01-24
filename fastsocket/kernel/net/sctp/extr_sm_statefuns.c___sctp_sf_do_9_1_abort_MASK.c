#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; scalar_t__ chunk_end; TYPE_4__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_6__ {int /*<<< orphan*/  cause; } ;
typedef  TYPE_2__ sctp_errhdr_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*) ; 

__attribute__((used)) static sctp_disposition_t FUNC8(const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const sctp_subtype_t type,
					void *arg,
					sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	unsigned len;
	__be16 error = SCTP_ERROR_NO_ERROR;

	/* See if we have an error cause code in the chunk.  */
	len = FUNC4(chunk->chunk_hdr->length);
	if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr)) {

		sctp_errhdr_t *err;
		FUNC7(err, chunk->chunk_hdr);
		if ((void *)err != (void *)chunk->chunk_end)
			return FUNC6(ep, asoc, type, arg, commands);

		error = ((sctp_errhdr_t *)chunk->skb->data)->cause;
	}

	FUNC5(commands, SCTP_CMD_SET_SK_ERR, FUNC1(ECONNRESET));
	/* ASSOC_FAILED will DELETE_TCB. */
	FUNC5(commands, SCTP_CMD_ASSOC_FAILED, FUNC3(error));
	FUNC2(SCTP_MIB_ABORTEDS);
	FUNC0(SCTP_MIB_CURRESTAB);

	return SCTP_DISPOSITION_ABORT;
}