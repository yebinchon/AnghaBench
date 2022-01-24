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
typedef  union sctp_addr_param {int dummy; } sctp_addr_param ;
struct TYPE_3__ {int /*<<< orphan*/  sin_family; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct sctp_packet {int dummy; } ;
struct sctp_errhdr {int /*<<< orphan*/  length; int /*<<< orphan*/  cause; scalar_t__ variable; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
typedef  int /*<<< orphan*/  sctp_errhdr_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_4__ {struct sctp_endpoint* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_DISCARD_PACKET ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  SCTP_ERROR_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sctp_packet* FUNC4 (struct sctp_endpoint*,int /*<<< orphan*/ *,struct sctp_chunk*,struct sctp_errhdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (union sctp_addr*,union sctp_addr_param*) ; 

__attribute__((used)) static int FUNC10(union sctp_addr *ssa,
				      struct sctp_chunk *init,
				      sctp_cmd_seq_t *commands)
{
	int len;
	struct sctp_packet *pkt;
	union sctp_addr_param *addrparm;
	struct sctp_errhdr *errhdr;
	struct sctp_endpoint *ep;
	char buffer[sizeof(struct sctp_errhdr)+sizeof(union sctp_addr_param)];
	struct sctp_af *af = FUNC6(ssa->v4.sin_family);

	/* Build the error on the stack.   We are way to malloc crazy
	 * throughout the code today.
	 */
	errhdr = (struct sctp_errhdr *)buffer;
	addrparm = (union sctp_addr_param *)errhdr->variable;

	/* Copy into a parm format. */
	len = af->to_addr_param(ssa, addrparm);
	len += sizeof(sctp_errhdr_t);

	errhdr->cause = SCTP_ERROR_RESTART;
	errhdr->length = FUNC3(len);

	/* Assign to the control socket. */
	ep = FUNC8((FUNC7()))->ep;

	/* Association is NULL since this may be a restart attack and we
	 * want to send back the attacker's vtag.
	 */
	pkt = FUNC4(ep, NULL, init, errhdr, len);

	if (!pkt)
		goto out;
	FUNC5(commands, SCTP_CMD_SEND_PKT, FUNC2(pkt));

	FUNC0(SCTP_MIB_OUTCTRLCHUNKS);

	/* Discard the rest of the inbound packet. */
	FUNC5(commands, SCTP_CMD_DISCARD_PACKET, FUNC1());

out:
	/* Even if there is no memory, treat as a failure so
	 * the packet will get dropped.
	 */
	return 0;
}