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
struct TYPE_5__ {int sac_state; scalar_t__ sac_assoc_id; } ;
struct TYPE_4__ {scalar_t__ sn_type; } ;
union sctp_notification {TYPE_2__ sn_assoc_change; TYPE_1__ sn_header; } ;
struct sockaddr_storage {int dummy; } ;
struct sctp_prim {scalar_t__ ssp_assoc_id; int /*<<< orphan*/  ssp_addr; } ;
struct msghdr {int dummy; } ;
struct connection {int /*<<< orphan*/  sctp_assoc; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; int /*<<< orphan*/  swork; int /*<<< orphan*/  sock; } ;
struct TYPE_6__ {int /*<<< orphan*/  sd; scalar_t__ associd; } ;
typedef  TYPE_3__ sctp_peeloff_arg_t ;
typedef  int /*<<< orphan*/  parg ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONNECT_PENDING ; 
 int /*<<< orphan*/  CF_INIT_PENDING ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 scalar_t__ SCTP_ASSOC_CHANGE ; 
#define  SCTP_CANT_STR_ASSOC 132 
#define  SCTP_COMM_LOST 131 
#define  SCTP_COMM_UP 130 
 int /*<<< orphan*/  SCTP_PRIMARY_ADDR ; 
#define  SCTP_RESTART 129 
#define  SCTP_SHUTDOWN_COMP 128 
 int /*<<< orphan*/  SCTP_SOCKOPT_PEELOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 struct connection* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_prim*,int /*<<< orphan*/ ,int) ; 
 struct connection* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  send_workqueue ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct connection *con,
				      struct msghdr *msg, char *buf)
{
	union sctp_notification *sn = (union sctp_notification *)buf;

	if (sn->sn_header.sn_type == SCTP_ASSOC_CHANGE) {
		switch (sn->sn_assoc_change.sac_state) {

		case SCTP_COMM_UP:
		case SCTP_RESTART:
		{
			/* Check that the new node is in the lockspace */
			struct sctp_prim prim;
			int nodeid;
			int prim_len, ret;
			int addr_len;
			struct connection *new_con;
			sctp_peeloff_arg_t parg;
			int parglen = sizeof(parg);
			int err;

			/*
			 * We get this before any data for an association.
			 * We verify that the node is in the cluster and
			 * then peel off a socket for it.
			 */
			if ((int)sn->sn_assoc_change.sac_assoc_id <= 0) {
				FUNC5("COMM_UP for invalid assoc ID %d",
					 (int)sn->sn_assoc_change.sac_assoc_id);
				FUNC11();
				return;
			}
			FUNC7(&prim, 0, sizeof(struct sctp_prim));
			prim_len = sizeof(struct sctp_prim);
			prim.ssp_assoc_id = sn->sn_assoc_change.sac_assoc_id;

			ret = FUNC4(con->sock,
						IPPROTO_SCTP,
						SCTP_PRIMARY_ADDR,
						(char*)&prim,
						&prim_len);
			if (ret < 0) {
				FUNC5("getsockopt/sctp_primary_addr on "
					  "new assoc %d failed : %d",
					  (int)sn->sn_assoc_change.sac_assoc_id,
					  ret);

				/* Retry INIT later */
				new_con = FUNC2(sn->sn_assoc_change.sac_assoc_id);
				if (new_con)
					FUNC3(CF_CONNECT_PENDING, &con->flags);
				return;
			}
			FUNC6(&prim.ssp_addr, 0, &addr_len);
			if (FUNC1(&prim.ssp_addr, &nodeid)) {
				int i;
				unsigned char *b=(unsigned char *)&prim.ssp_addr;
				FUNC5("reject connect from unknown addr");
				for (i=0; i<sizeof(struct sockaddr_storage);i++)
					FUNC9("%02x ", b[i]);
				FUNC9("\n");
				FUNC12(prim.ssp_assoc_id);
				return;
			}

			new_con = FUNC8(nodeid, GFP_NOFS);
			if (!new_con)
				return;

			/* Peel off a new sock */
			parg.associd = sn->sn_assoc_change.sac_assoc_id;
			ret = FUNC4(con->sock, IPPROTO_SCTP,
						SCTP_SOCKOPT_PEELOFF,
						(void *)&parg, &parglen);
			if (ret < 0) {
				FUNC5("Can't peel off a socket for "
					  "connection %d to node %d: err=%d",
					  parg.associd, nodeid, ret);
				return;
			}
			new_con->sock = FUNC13(parg.sd, &err);
			if (!new_con->sock) {
				FUNC5("sockfd_lookup error %d", err);
				return;
			}
			FUNC0(new_con->sock, new_con);
			FUNC14(new_con->sock);

			FUNC5("connecting to %d sctp association %d",
				 nodeid, (int)sn->sn_assoc_change.sac_assoc_id);

			/* Send any pending writes */
			FUNC3(CF_CONNECT_PENDING, &new_con->flags);
			FUNC3(CF_INIT_PENDING, &con->flags);
			if (!FUNC15(CF_WRITE_PENDING, &new_con->flags)) {
				FUNC10(send_workqueue, &new_con->swork);
			}
			if (!FUNC15(CF_READ_PENDING, &new_con->flags))
				FUNC10(recv_workqueue, &new_con->rwork);
		}
		break;

		case SCTP_COMM_LOST:
		case SCTP_SHUTDOWN_COMP:
		{
			con = FUNC2(sn->sn_assoc_change.sac_assoc_id);
			if (con) {
				con->sctp_assoc = 0;
			}
		}
		break;

		/* We don't know which INIT failed, so clear the PENDING flags
		 * on them all.  if assoc_id is zero then it will then try
		 * again */

		case SCTP_CANT_STR_ASSOC:
		{
			FUNC5("Can't start SCTP association - retrying");
			FUNC11();
		}
		break;

		default:
			FUNC5("unexpected SCTP assoc change id=%d state=%d",
				  (int)sn->sn_assoc_change.sac_assoc_id,
				  sn->sn_assoc_change.sac_state);
		}
	}
}