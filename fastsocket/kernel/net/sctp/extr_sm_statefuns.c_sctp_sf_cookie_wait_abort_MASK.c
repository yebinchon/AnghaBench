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
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  transport; TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_6__ {int /*<<< orphan*/  cause; } ;
typedef  TYPE_3__ sctp_errhdr_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_abort_chunk_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_association const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC5(const struct sctp_endpoint *ep,
				     const struct sctp_association *asoc,
				     const sctp_subtype_t type,
				     void *arg,
				     sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	unsigned len;
	__be16 error = SCTP_ERROR_NO_ERROR;

	if (!FUNC4(chunk, asoc))
		return FUNC2(ep, asoc, type, arg, commands);

	/* Make sure that the ABORT chunk has a valid length.
	 * Since this is an ABORT chunk, we have to discard it
	 * because of the following text:
	 * RFC 2960, Section 3.3.7
	 *    If an endpoint receives an ABORT with a format error or for an
	 *    association that doesn't exist, it MUST silently discard it.
	 * Becasue the length is "invalid", we can't really discard just
	 * as we do not know its true length.  So, to be safe, discard the
	 * packet.
	 */
	if (!FUNC1(chunk, sizeof(sctp_abort_chunk_t)))
		return FUNC2(ep, asoc, type, arg, commands);

	/* See if we have an error cause code in the chunk.  */
	len = FUNC0(chunk->chunk_hdr->length);
	if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr))
		error = ((sctp_errhdr_t *)chunk->skb->data)->cause;

	return FUNC3(commands, error, ECONNREFUSED, asoc,
				      chunk->transport);
}