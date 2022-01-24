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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sock {void* sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_ack_backlog; } ;
struct l2cap_info_req {void* type; void* status; void* result; void* dcid; void* scid; } ;
struct l2cap_conn_rsp {void* type; void* status; void* result; void* dcid; void* scid; } ;
struct l2cap_conn_req {void* psm; int /*<<< orphan*/  scid; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; } ;
struct l2cap_conn {int disc_reason; int info_state; int /*<<< orphan*/  info_ident; int /*<<< orphan*/  info_timer; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  hcon; struct l2cap_chan_list chan_list; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  info ;
typedef  void* __le16 ;
struct TYPE_4__ {scalar_t__ defer_setup; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int dcid; int scid; int /*<<< orphan*/  ident; void* psm; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_L2CAP ; 
 void* BT_CONFIG ; 
 void* BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  L2CAP_CONN_RSP ; 
 int L2CAP_CR_BAD_PSM ; 
 int L2CAP_CR_NO_MEM ; 
 int L2CAP_CR_PEND ; 
 int L2CAP_CR_SEC_BLOCK ; 
 int L2CAP_CR_SUCCESS ; 
 int L2CAP_CS_AUTHEN_PEND ; 
 int L2CAP_CS_AUTHOR_PEND ; 
 int L2CAP_CS_NO_INFO ; 
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ; 
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ; 
 int /*<<< orphan*/  L2CAP_INFO_REQ ; 
 int /*<<< orphan*/  L2CAP_INFO_TIMEOUT ; 
 int L2CAP_IT_FEAT_MASK ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,struct sock*,struct sock*) ; 
 scalar_t__ FUNC2 (struct l2cap_chan_list*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_2__* FUNC6 (struct sock*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*) ; 
 struct sock* FUNC12 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_info_req*) ; 
 struct sock* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC27(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_chan_list *list = &conn->chan_list;
	struct l2cap_conn_req *req = (struct l2cap_conn_req *) data;
	struct l2cap_conn_rsp rsp;
	struct sock *sk, *parent;
	int result, status = L2CAP_CS_NO_INFO;

	u16 dcid = 0, scid = FUNC3(req->scid);
	__le16 psm = req->psm;

	FUNC0("psm 0x%2.2x scid 0x%4.4x", psm, scid);

	/* Check if we have socket listening on psm */
	parent = FUNC12(BT_LISTEN, psm, conn->src);
	if (!parent) {
		result = L2CAP_CR_BAD_PSM;
		goto sendresp;
	}

	/* Check if the ACL is secure enough (if not SDP) */
	if (psm != FUNC7(0x0001) &&
				!FUNC8(conn->hcon)) {
		conn->disc_reason = 0x05;
		result = L2CAP_CR_SEC_BLOCK;
		goto response;
	}

	result = L2CAP_CR_NO_MEM;

	/* Check for backlog size */
	if (FUNC21(parent)) {
		FUNC0("backlog full %d", parent->sk_ack_backlog);
		goto response;
	}

	sk = FUNC15(FUNC22(parent), NULL, BTPROTO_L2CAP, GFP_ATOMIC);
	if (!sk)
		goto response;

	FUNC25(&list->lock);

	/* Check if we already have channel with that dcid */
	if (FUNC2(list, scid)) {
		FUNC26(&list->lock);
		FUNC23(sk, SOCK_ZAPPED);
		FUNC17(sk);
		goto response;
	}

	FUNC9(conn->hcon);

	FUNC16(sk, parent);
	FUNC4(&FUNC6(sk)->src, conn->src);
	FUNC4(&FUNC6(sk)->dst, conn->dst);
	FUNC13(sk)->psm  = psm;
	FUNC13(sk)->dcid = scid;

	FUNC1(conn, sk, parent);
	dcid = FUNC13(sk)->scid;

	FUNC18(sk, sk->sk_sndtimeo);

	FUNC13(sk)->ident = cmd->ident;

	if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE) {
		if (FUNC10(sk)) {
			if (FUNC6(sk)->defer_setup) {
				sk->sk_state = BT_CONNECT2;
				result = L2CAP_CR_PEND;
				status = L2CAP_CS_AUTHOR_PEND;
				parent->sk_data_ready(parent, 0);
			} else {
				sk->sk_state = BT_CONFIG;
				result = L2CAP_CR_SUCCESS;
				status = L2CAP_CS_NO_INFO;
			}
		} else {
			sk->sk_state = BT_CONNECT2;
			result = L2CAP_CR_PEND;
			status = L2CAP_CS_AUTHEN_PEND;
		}
	} else {
		sk->sk_state = BT_CONNECT2;
		result = L2CAP_CR_PEND;
		status = L2CAP_CS_NO_INFO;
	}

	FUNC26(&list->lock);

response:
	FUNC5(parent);

sendresp:
	rsp.scid   = FUNC7(scid);
	rsp.dcid   = FUNC7(dcid);
	rsp.result = FUNC7(result);
	rsp.status = FUNC7(status);
	FUNC14(conn, cmd->ident, L2CAP_CONN_RSP, sizeof(rsp), &rsp);

	if (result == L2CAP_CR_PEND && status == L2CAP_CS_NO_INFO) {
		struct l2cap_info_req info;
		info.type = FUNC7(L2CAP_IT_FEAT_MASK);

		conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_SENT;
		conn->info_ident = FUNC11(conn);

		FUNC19(&conn->info_timer, jiffies +
					FUNC20(L2CAP_INFO_TIMEOUT));

		FUNC14(conn, conn->info_ident,
					L2CAP_INFO_REQ, sizeof(info), &info);
	}

	return 0;
}