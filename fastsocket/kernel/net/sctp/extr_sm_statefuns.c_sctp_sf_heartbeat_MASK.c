#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_transport {int /*<<< orphan*/  hb_nonce; int /*<<< orphan*/  ipaddr; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  hb_nonce; int /*<<< orphan*/  sent_at; int /*<<< orphan*/  daddr; TYPE_1__ param_hdr; } ;
typedef  TYPE_2__ sctp_sender_hb_info_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_RTO_PENDING ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_PARAM_HEARTBEAT_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_transport*,TYPE_2__*,size_t) ; 

__attribute__((used)) static sctp_disposition_t FUNC5(const struct sctp_endpoint *ep,
					    const struct sctp_association *asoc,
					    const sctp_subtype_t type,
					    void *arg,
					    sctp_cmd_seq_t *commands)
{
	struct sctp_transport *transport = (struct sctp_transport *) arg;
	struct sctp_chunk *reply;
	sctp_sender_hb_info_t hbinfo;
	size_t paylen = 0;

	hbinfo.param_hdr.type = SCTP_PARAM_HEARTBEAT_INFO;
	hbinfo.param_hdr.length = FUNC2(sizeof(sctp_sender_hb_info_t));
	hbinfo.daddr = transport->ipaddr;
	hbinfo.sent_at = jiffies;
	hbinfo.hb_nonce = transport->hb_nonce;

	/* Send a heartbeat to our peer.  */
	paylen = sizeof(sctp_sender_hb_info_t);
	reply = FUNC4(asoc, transport, &hbinfo, paylen);
	if (!reply)
		return SCTP_DISPOSITION_NOMEM;

	/* Set rto_pending indicating that an RTT measurement
	 * is started with this heartbeat chunk.
	 */
	FUNC3(commands, SCTP_CMD_RTO_PENDING,
			FUNC1(transport));

	FUNC3(commands, SCTP_CMD_REPLY, FUNC0(reply));
	return SCTP_DISPOSITION_CONSUME;
}