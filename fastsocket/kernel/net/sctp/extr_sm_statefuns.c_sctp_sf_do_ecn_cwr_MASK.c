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
typedef  int /*<<< orphan*/  u32 ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int /*<<< orphan*/  last_ecne_tsn; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_ecne_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
struct TYPE_3__ {int /*<<< orphan*/  lowest_tsn; } ;
typedef  TYPE_1__ sctp_cwrhdr_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_ECN_CWR ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

sctp_disposition_t FUNC9(const struct sctp_endpoint *ep,
				      const struct sctp_association *asoc,
				      const sctp_subtype_t type,
				      void *arg,
				      sctp_cmd_seq_t *commands)
{
	sctp_cwrhdr_t *cwr;
	struct sctp_chunk *chunk = arg;
	u32 lowest_tsn;

	if (!FUNC7(chunk, asoc))
		return FUNC5(ep, asoc, type, arg, commands);

	if (!FUNC4(chunk, sizeof(sctp_ecne_chunk_t)))
		return FUNC6(ep, asoc, type, arg,
						  commands);

	cwr = (sctp_cwrhdr_t *) chunk->skb->data;
	FUNC8(chunk->skb, sizeof(sctp_cwrhdr_t));

	lowest_tsn = FUNC2(cwr->lowest_tsn);

	/* Does this CWR ack the last sent congestion notification? */
	if (FUNC1(asoc->last_ecne_tsn, lowest_tsn)) {
		/* Stop sending ECNE. */
		FUNC3(commands,
				SCTP_CMD_ECN_CWR,
				FUNC0(lowest_tsn));
	}
	return SCTP_DISPOSITION_CONSUME;
}