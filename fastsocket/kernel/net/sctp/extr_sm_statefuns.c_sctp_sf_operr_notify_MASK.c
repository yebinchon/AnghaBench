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
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {scalar_t__ chunk_end; int /*<<< orphan*/  chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_operr_chunk_t ;
typedef  int /*<<< orphan*/  sctp_errhdr_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_PROCESS_OPERR ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC8(const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const sctp_subtype_t type,
					void *arg,
					sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	sctp_errhdr_t *err;

	if (!FUNC6(chunk, asoc))
		return FUNC3(ep, asoc, type, arg, commands);

	/* Make sure that the ERROR chunk has a valid length. */
	if (!FUNC2(chunk, sizeof(sctp_operr_chunk_t)))
		return FUNC4(ep, asoc, type, arg,
						  commands);
	FUNC7(err, chunk->chunk_hdr);
	if ((void *)err != (void *)chunk->chunk_end)
		return FUNC5(ep, asoc, type, arg,
						  (void *)err, commands);

	FUNC1(commands, SCTP_CMD_PROCESS_OPERR,
			FUNC0(chunk));

	return SCTP_DISPOSITION_CONSUME;
}