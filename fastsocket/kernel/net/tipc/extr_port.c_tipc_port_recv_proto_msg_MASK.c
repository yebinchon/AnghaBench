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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ published; scalar_t__ congested; scalar_t__ connected; } ;
struct port {scalar_t__ last_in_seqno; int /*<<< orphan*/  probing_state; TYPE_1__ publ; int /*<<< orphan*/  (* wakeup ) (TYPE_1__*) ;int /*<<< orphan*/  acked; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIRMED ; 
 scalar_t__ CONN_ACK ; 
 int /*<<< orphan*/  CONN_MANAGER ; 
 scalar_t__ CONN_PROBE ; 
 int /*<<< orphan*/  CONN_PROBE_REPLY ; 
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 scalar_t__ TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  TIPC_HIGH_IMPORTANCE ; 
 scalar_t__ TIPC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 scalar_t__ FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 struct sk_buff* FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC11 (struct port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct port*) ; 
 int /*<<< orphan*/  FUNC13 (struct port*) ; 
 scalar_t__ FUNC14 (struct port*) ; 
 scalar_t__ FUNC15 (struct port*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 scalar_t__ FUNC18 (struct port*) ; 
 struct port* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct port*) ; 

void FUNC21(struct sk_buff *buf)
{
	struct tipc_msg *msg = FUNC1(buf);
	struct port *p_ptr = FUNC19(FUNC3(msg));
	u32 err = TIPC_OK;
	struct sk_buff *r_buf = NULL;
	struct sk_buff *abort_buf = NULL;

	FUNC2(msg, "PORT<RECV<:");

	if (!p_ptr) {
		err = TIPC_ERR_NO_PORT;
	} else if (p_ptr->publ.connected) {
		if (FUNC14(p_ptr) != FUNC5(msg))
			err = TIPC_ERR_NO_PORT;
		if (FUNC15(p_ptr) != FUNC6(msg))
			err = TIPC_ERR_NO_PORT;
		if (!err && FUNC7(msg)) {
			u32 seqno = FUNC8(msg);
			u32 myno =  ++p_ptr->last_in_seqno;
			if (seqno != myno) {
				err = TIPC_ERR_NO_PORT;
				abort_buf = FUNC11(p_ptr, err);
			}
		}
		if (FUNC9(msg) == CONN_ACK) {
			int wakeup = FUNC18(p_ptr) &&
				     p_ptr->publ.congested &&
				     p_ptr->wakeup;
			p_ptr->acked += FUNC4(msg);
			if (FUNC18(p_ptr))
				goto exit;
			p_ptr->publ.congested = 0;
			if (!wakeup)
				goto exit;
			p_ptr->wakeup(&p_ptr->publ);
			goto exit;
		}
	} else if (p_ptr->publ.published) {
		err = TIPC_ERR_NO_PORT;
	}
	if (err) {
		r_buf = FUNC10(FUNC6(msg),
					     FUNC5(msg),
					     FUNC3(msg),
					     tipc_own_addr,
					     TIPC_HIGH_IMPORTANCE,
					     TIPC_CONN_MSG,
					     err,
					     0,
					     0);
		goto exit;
	}

	/* All is fine */
	if (FUNC9(msg) == CONN_PROBE) {
		r_buf = FUNC10(FUNC6(msg),
					     FUNC5(msg),
					     FUNC3(msg),
					     tipc_own_addr,
					     CONN_MANAGER,
					     CONN_PROBE_REPLY,
					     TIPC_OK,
					     FUNC13(p_ptr),
					     0);
	}
	p_ptr->probing_state = CONFIRMED;
	FUNC12(p_ptr);
exit:
	if (p_ptr)
		FUNC20(p_ptr);
	FUNC17(r_buf);
	FUNC17(abort_buf);
	FUNC0(buf);
}