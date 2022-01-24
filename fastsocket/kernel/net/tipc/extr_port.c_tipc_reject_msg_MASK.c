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
struct TYPE_2__ {scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 int LONG_H_SIZE ; 
 scalar_t__ MAX_REJECT_SIZE ; 
 int MCAST_H_SIZE ; 
 scalar_t__ TIPC_CRITICAL_IMPORTANCE ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC25 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC26 (struct tipc_msg*) ; 
 struct sk_buff* FUNC27 (struct port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct port*) ; 

int FUNC32(struct sk_buff *buf, u32 err)
{
	struct tipc_msg *msg = FUNC2(buf);
	struct sk_buff *rbuf;
	struct tipc_msg *rmsg;
	int hdr_sz;
	u32 imp = FUNC11(msg);
	u32 data_sz = FUNC5(msg);

	if (data_sz > MAX_REJECT_SIZE)
		data_sz = MAX_REJECT_SIZE;
	if (FUNC3(msg) && (imp < TIPC_CRITICAL_IMPORTANCE))
		imp++;
	FUNC6(msg, "port->rej: ");

	/* discard rejected message if it shouldn't be returned to sender */
	if (FUNC10(msg) || FUNC7(msg)) {
		FUNC1(buf);
		return data_sz;
	}

	/* construct rejected message */
	if (FUNC13(msg))
		hdr_sz = MCAST_H_SIZE;
	else
		hdr_sz = LONG_H_SIZE;
	rbuf = FUNC0(data_sz + hdr_sz);
	if (rbuf == NULL) {
		FUNC1(buf);
		return data_sz;
	}
	rmsg = FUNC2(rbuf);
	FUNC12(rmsg, imp, FUNC26(msg), hdr_sz, FUNC16(msg));
	FUNC19(rmsg, err);
	FUNC18(rmsg, FUNC17(msg));
	FUNC23(rmsg, FUNC9(msg));
	if (FUNC25(msg)) {
		FUNC22(rmsg, tipc_own_addr);
		/* leave name type & instance as zeroes */
	} else {
		FUNC22(rmsg, FUNC8(msg));
		FUNC21(rmsg, FUNC15(msg));
		FUNC20(rmsg, FUNC14(msg));
	}
	FUNC24(rmsg, data_sz + hdr_sz);
	FUNC28(rbuf, hdr_sz, FUNC4(msg), data_sz);

	/* send self-abort message when rejecting on a connected port */
	if (FUNC3(msg)) {
		struct sk_buff *abuf = NULL;
		struct port *p_ptr = FUNC30(FUNC9(msg));

		if (p_ptr) {
			if (p_ptr->publ.connected)
				abuf = FUNC27(p_ptr, err);
			FUNC31(p_ptr);
		}
		FUNC29(abuf);
	}

	/* send rejected message */
	FUNC1(buf);
	FUNC29(rbuf);
	return data_sz;
}