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
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_3__ {int /*<<< orphan*/  lowest_tsn; } ;
typedef  TYPE_1__ sctp_ecnehdr_t ;
typedef  int /*<<< orphan*/  sctp_ecne_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_ECN_ECNE ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

sctp_disposition_t FUNC8(const struct sctp_endpoint *ep,
				   const struct sctp_association *asoc,
				   const sctp_subtype_t type,
				   void *arg,
				   sctp_cmd_seq_t *commands)
{
	sctp_ecnehdr_t *ecne;
	struct sctp_chunk *chunk = arg;

	if (!FUNC6(chunk, asoc))
		return FUNC4(ep, asoc, type, arg, commands);

	if (!FUNC3(chunk, sizeof(sctp_ecne_chunk_t)))
		return FUNC5(ep, asoc, type, arg,
						  commands);

	ecne = (sctp_ecnehdr_t *) chunk->skb->data;
	FUNC7(chunk->skb, sizeof(sctp_ecnehdr_t));

	/* If this is a newer ECNE than the last CWR packet we sent out */
	FUNC2(commands, SCTP_CMD_ECN_ECNE,
			FUNC0(FUNC1(ecne->lowest_tsn)));

	return SCTP_DISPOSITION_CONSUME;
}