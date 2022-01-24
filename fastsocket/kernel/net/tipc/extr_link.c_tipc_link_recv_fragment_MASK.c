#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;

/* Variables and functions */
 scalar_t__ FIRST_FRAGMENT ; 
 scalar_t__ LONG_H_SIZE ; 
 scalar_t__ MCAST_H_SIZE ; 
 scalar_t__ TIPC_MAX_USER_MSG_SIZE ; 
 scalar_t__ TIPC_MCAST_MSG ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,char*) ; 
 int FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*) ; 
 scalar_t__ FUNC14 (struct tipc_msg*) ; 
 scalar_t__ FUNC15 (struct tipc_msg*) ; 
 scalar_t__ FUNC16 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int FUNC23(struct sk_buff **pending, struct sk_buff **fb,
			    struct tipc_msg **m)
{
	struct sk_buff *prev = NULL;
	struct sk_buff *fbuf = *fb;
	struct tipc_msg *fragm = FUNC2(fbuf);
	struct sk_buff *pbuf = *pending;
	u32 long_msg_seq_no = FUNC11(fragm);

	*fb = NULL;
	FUNC9(fragm,"FRG<REC<");

	/* Is there an incomplete message waiting for this fragment? */

	while (pbuf && ((FUNC14(FUNC2(pbuf)) != long_msg_seq_no)
			|| (FUNC12(fragm) != FUNC12(FUNC2(pbuf))))) {
		prev = pbuf;
		pbuf = pbuf->next;
	}

	if (!pbuf && (FUNC16(fragm) == FIRST_FRAGMENT)) {
		struct tipc_msg *imsg = (struct tipc_msg *)FUNC7(fragm);
		u32 msg_sz = FUNC15(imsg);
		u32 fragm_sz = FUNC8(fragm);
		u32 exp_fragm_cnt = msg_sz/fragm_sz + !!(msg_sz % fragm_sz);
		u32 max =  TIPC_MAX_USER_MSG_SIZE + LONG_H_SIZE;
		if (FUNC16(imsg) == TIPC_MCAST_MSG)
			max = TIPC_MAX_USER_MSG_SIZE + MCAST_H_SIZE;
		if (FUNC15(imsg) > max) {
			FUNC9(fragm,"<REC<Oversized: ");
			FUNC1(fbuf);
			return 0;
		}
		pbuf = FUNC0(FUNC15(imsg));
		if (pbuf != NULL) {
			pbuf->next = *pending;
			*pending = pbuf;
			FUNC20(pbuf, imsg,
						FUNC8(fragm));
			/*  Prepare buffer for subsequent fragments. */

			FUNC19(pbuf, long_msg_seq_no);
			FUNC18(pbuf,fragm_sz);
			FUNC17(pbuf,exp_fragm_cnt - 1);
		} else {
			FUNC22("Link unable to reassemble fragmented message\n");
		}
		FUNC1(fbuf);
		return 0;
	} else if (pbuf && (FUNC16(fragm) != FIRST_FRAGMENT)) {
		u32 dsz = FUNC8(fragm);
		u32 fsz = FUNC6(pbuf);
		u32 crs = ((FUNC10(fragm) - 1) * fsz);
		u32 exp_frags = FUNC5(pbuf) - 1;
		FUNC21(pbuf, crs,
					       FUNC7(fragm), dsz);
		FUNC1(fbuf);

		/* Is message complete? */

		if (exp_frags == 0) {
			if (prev)
				prev->next = pbuf->next;
			else
				*pending = pbuf->next;
			FUNC13(FUNC2(pbuf));
			*fb = pbuf;
			*m = FUNC2(pbuf);
			return 1;
		}
		FUNC17(pbuf,exp_frags);
		return 0;
	}
	FUNC3(" Discarding orphan fragment %x\n",fbuf);
	FUNC9(fragm,"ORPHAN:");
	FUNC3("Pending long buffers:\n");
	FUNC4(*pending);
	FUNC1(fbuf);
	return 0;
}