#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct TYPE_7__ {int chunk; } ;
typedef  TYPE_1__ sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_8__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_2__ sctp_chunkhdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
#define  SCTP_CID_ACTION_DISCARD 131 
#define  SCTP_CID_ACTION_DISCARD_ERR 130 
 int SCTP_CID_ACTION_MASK ; 
#define  SCTP_CID_ACTION_SKIP 129 
#define  SCTP_CID_ACTION_SKIP_ERR 128 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DISCARD ; 
 int /*<<< orphan*/  SCTP_ERROR_UNKNOWN_CHUNK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC10(const struct sctp_endpoint *ep,
				     const struct sctp_association *asoc,
				     const sctp_subtype_t type,
				     void *arg,
				     sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *unk_chunk = arg;
	struct sctp_chunk *err_chunk;
	sctp_chunkhdr_t *hdr;

	FUNC1("Processing the unknown chunk id %d.\n", type.chunk);

	if (!FUNC9(unk_chunk, asoc))
		return FUNC7(ep, asoc, type, arg, commands);

	/* Make sure that the chunk has a valid length.
	 * Since we don't know the chunk type, we use a general
	 * chunkhdr structure to make a comparison.
	 */
	if (!FUNC5(unk_chunk, sizeof(sctp_chunkhdr_t)))
		return FUNC8(ep, asoc, type, arg,
						  commands);

	switch (type.chunk & SCTP_CID_ACTION_MASK) {
	case SCTP_CID_ACTION_DISCARD:
		/* Discard the packet.  */
		return FUNC7(ep, asoc, type, arg, commands);
		break;
	case SCTP_CID_ACTION_DISCARD_ERR:
		/* Generate an ERROR chunk as response. */
		hdr = unk_chunk->chunk_hdr;
		err_chunk = FUNC6(asoc, unk_chunk,
					       SCTP_ERROR_UNKNOWN_CHUNK, hdr,
					       FUNC2(FUNC3(hdr->length)),
					       0);
		if (err_chunk) {
			FUNC4(commands, SCTP_CMD_REPLY,
					FUNC0(err_chunk));
		}

		/* Discard the packet.  */
		FUNC7(ep, asoc, type, arg, commands);
		return SCTP_DISPOSITION_CONSUME;
		break;
	case SCTP_CID_ACTION_SKIP:
		/* Skip the chunk.  */
		return SCTP_DISPOSITION_DISCARD;
		break;
	case SCTP_CID_ACTION_SKIP_ERR:
		/* Generate an ERROR chunk as response. */
		hdr = unk_chunk->chunk_hdr;
		err_chunk = FUNC6(asoc, unk_chunk,
					       SCTP_ERROR_UNKNOWN_CHUNK, hdr,
					       FUNC2(FUNC3(hdr->length)),
					       0);
		if (err_chunk) {
			FUNC4(commands, SCTP_CMD_REPLY,
					FUNC0(err_chunk));
		}
		/* Skip the chunk.  */
		return SCTP_DISPOSITION_CONSUME;
		break;
	default:
		break;
	}

	return SCTP_DISPOSITION_DISCARD;
}