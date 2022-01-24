#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct l2cap_pinfo {int mode; int conf_state; unsigned long imtu; void* fcs; int /*<<< orphan*/  dcid; TYPE_1__* conn; scalar_t__ num_conf_rsp; scalar_t__ num_conf_req; } ;
struct l2cap_conf_rfc {int mode; void* max_pdu_size; int /*<<< orphan*/  monitor_timeout; int /*<<< orphan*/  retrans_timeout; int /*<<< orphan*/  max_transmit; int /*<<< orphan*/  txwin_size; } ;
struct l2cap_conf_req {void* flags; void* dcid; void* data; } ;
typedef  int /*<<< orphan*/  rfc ;
struct TYPE_2__ {int feat_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  L2CAP_CONF_FCS ; 
 int /*<<< orphan*/  L2CAP_CONF_MTU ; 
 int L2CAP_CONF_NO_FCS_RECV ; 
 int /*<<< orphan*/  L2CAP_CONF_RFC ; 
 int L2CAP_CONF_STATE2_DEVICE ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MAX_PDU_SIZE ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MAX_TX ; 
 unsigned long L2CAP_DEFAULT_MTU ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_TX_WINDOW ; 
 void* L2CAP_FCS_NONE ; 
 int L2CAP_FEAT_FCS ; 
#define  L2CAP_MODE_BASIC 130 
#define  L2CAP_MODE_ERTM 129 
#define  L2CAP_MODE_STREAMING 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct l2cap_pinfo* FUNC4 (struct sock*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, void *data)
{
	struct l2cap_pinfo *pi = FUNC4(sk);
	struct l2cap_conf_req *req = data;
	struct l2cap_conf_rfc rfc = { .mode = L2CAP_MODE_BASIC };
	void *ptr = req->data;

	FUNC0("sk %p", sk);

	if (pi->num_conf_req || pi->num_conf_rsp)
		goto done;

	switch (pi->mode) {
	case L2CAP_MODE_STREAMING:
	case L2CAP_MODE_ERTM:
		pi->conf_state |= L2CAP_CONF_STATE2_DEVICE;
		if (!FUNC3(pi->mode, pi->conn->feat_mask))
			FUNC6(pi->conn, sk);
		break;
	default:
		pi->mode = FUNC5(rfc.mode, pi->conn->feat_mask);
		break;
	}

done:
	switch (pi->mode) {
	case L2CAP_MODE_BASIC:
		if (pi->imtu != L2CAP_DEFAULT_MTU)
			FUNC2(&ptr, L2CAP_CONF_MTU, 2, pi->imtu);
		break;

	case L2CAP_MODE_ERTM:
		rfc.mode            = L2CAP_MODE_ERTM;
		rfc.txwin_size      = L2CAP_DEFAULT_TX_WINDOW;
		rfc.max_transmit    = L2CAP_DEFAULT_MAX_TX;
		rfc.retrans_timeout = 0;
		rfc.monitor_timeout = 0;
		rfc.max_pdu_size    = FUNC1(L2CAP_DEFAULT_MAX_PDU_SIZE);

		FUNC2(&ptr, L2CAP_CONF_RFC,
					sizeof(rfc), (unsigned long) &rfc);

		if (!(pi->conn->feat_mask & L2CAP_FEAT_FCS))
			break;

		if (pi->fcs == L2CAP_FCS_NONE ||
				pi->conf_state & L2CAP_CONF_NO_FCS_RECV) {
			pi->fcs = L2CAP_FCS_NONE;
			FUNC2(&ptr, L2CAP_CONF_FCS, 1, pi->fcs);
		}
		break;

	case L2CAP_MODE_STREAMING:
		rfc.mode            = L2CAP_MODE_STREAMING;
		rfc.txwin_size      = 0;
		rfc.max_transmit    = 0;
		rfc.retrans_timeout = 0;
		rfc.monitor_timeout = 0;
		rfc.max_pdu_size    = FUNC1(L2CAP_DEFAULT_MAX_PDU_SIZE);

		FUNC2(&ptr, L2CAP_CONF_RFC,
					sizeof(rfc), (unsigned long) &rfc);

		if (!(pi->conn->feat_mask & L2CAP_FEAT_FCS))
			break;

		if (pi->fcs == L2CAP_FCS_NONE ||
				pi->conf_state & L2CAP_CONF_NO_FCS_RECV) {
			pi->fcs = L2CAP_FCS_NONE;
			FUNC2(&ptr, L2CAP_CONF_FCS, 1, pi->fcs);
		}
		break;
	}

	/* FIXME: Need actual value of the flush timeout */
	//if (flush_to != L2CAP_DEFAULT_FLUSH_TO)
	//   l2cap_add_conf_opt(&ptr, L2CAP_CONF_FLUSH_TO, 2, pi->flush_to);

	req->dcid  = FUNC1(pi->dcid);
	req->flags = FUNC1(0);

	return ptr - data;
}