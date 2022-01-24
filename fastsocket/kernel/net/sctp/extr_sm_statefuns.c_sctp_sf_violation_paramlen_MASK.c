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
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CID_ABORT ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct sctp_association const*) ; 
 struct sctp_chunk* FUNC8 (struct sctp_association const*,struct sctp_chunk*,struct sctp_paramhdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static sctp_disposition_t FUNC10(
				     const struct sctp_endpoint *ep,
				     const struct sctp_association *asoc,
				     const sctp_subtype_t type,
				     void *arg, void *ext,
				     sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk =  arg;
	struct sctp_paramhdr *param = ext;
	struct sctp_chunk *abort = NULL;

	if (FUNC7(SCTP_CID_ABORT, asoc))
		goto discard;

	/* Make the abort chunk. */
	abort = FUNC8(asoc, chunk, param);
	if (!abort)
		goto nomem;

	FUNC6(commands, SCTP_CMD_REPLY, FUNC0(abort));
	FUNC3(SCTP_MIB_OUTCTRLCHUNKS);

	FUNC6(commands, SCTP_CMD_SET_SK_ERR,
			FUNC2(ECONNABORTED));
	FUNC6(commands, SCTP_CMD_ASSOC_FAILED,
			FUNC4(SCTP_ERROR_PROTO_VIOLATION));
	FUNC1(SCTP_MIB_CURRESTAB);
	FUNC3(SCTP_MIB_ABORTEDS);

discard:
	FUNC9(ep, asoc, FUNC5(0), arg, commands);
	return SCTP_DISPOSITION_ABORT;
nomem:
	return SCTP_DISPOSITION_NOMEM;
}