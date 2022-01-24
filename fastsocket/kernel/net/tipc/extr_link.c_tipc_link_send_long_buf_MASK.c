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
typedef  int /*<<< orphan*/  unchar ;
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sent_fragments; int /*<<< orphan*/  sent_fragmented; } ;
struct link {scalar_t__ addr; TYPE_1__ stats; int /*<<< orphan*/  long_msg_seq_no; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FIRST_FRAGMENT ; 
 int /*<<< orphan*/  FRAGMENT ; 
 scalar_t__ INT_H_SIZE ; 
 int /*<<< orphan*/  LAST_FRAGMENT ; 
 int /*<<< orphan*/  MSG_FRAGMENTER ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct link*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct tipc_msg*) ; 
 scalar_t__ FUNC17 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct link*) ; 
 int /*<<< orphan*/  FUNC21 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int FUNC23(struct link *l_ptr, struct sk_buff *buf)
{
	struct tipc_msg *inmsg = FUNC2(buf);
	struct tipc_msg fragm_hdr;
	u32 insize = FUNC17(inmsg);
	u32 dsz = FUNC5(inmsg);
	unchar *crs = buf->data;
	u32 rest = insize;
	u32 pack_sz = FUNC3(l_ptr);
	u32 fragm_sz = pack_sz - INT_H_SIZE;
	u32 fragm_no = 1;
	u32 destaddr;

	if (FUNC16(inmsg))
		destaddr = l_ptr->addr;
	else
		destaddr = FUNC6(inmsg);

	if (FUNC9(inmsg))
		FUNC13(inmsg, tipc_own_addr);

	/* Prepare reusable fragment header: */

	FUNC7(&fragm_hdr, MSG_FRAGMENTER, FIRST_FRAGMENT,
		 INT_H_SIZE, destaddr);
	FUNC11(&fragm_hdr, FUNC8(inmsg));
	FUNC12(&fragm_hdr, FUNC4(l_ptr->long_msg_seq_no++));
	FUNC10(&fragm_hdr, fragm_no);
	l_ptr->stats.sent_fragmented++;

	/* Chop up message: */

	while (rest > 0) {
		struct sk_buff *fragm;

		if (rest <= fragm_sz) {
			fragm_sz = rest;
			FUNC15(&fragm_hdr, LAST_FRAGMENT);
		}
		fragm = FUNC0(fragm_sz + INT_H_SIZE);
		if (fragm == NULL) {
			FUNC22("Link unable to fragment message\n");
			dsz = -ENOMEM;
			goto exit;
		}
		FUNC14(&fragm_hdr, fragm_sz + INT_H_SIZE);
		FUNC18(fragm, &fragm_hdr, INT_H_SIZE);
		FUNC19(fragm, INT_H_SIZE, crs,
					       fragm_sz);
		/*  Send queued messages first, if any: */

		l_ptr->stats.sent_fragments++;
		FUNC21(l_ptr, fragm);
		if (!FUNC20(l_ptr))
			return dsz;
		FUNC10(&fragm_hdr, ++fragm_no);
		rest -= fragm_sz;
		crs += fragm_sz;
		FUNC15(&fragm_hdr, FRAGMENT);
	}
exit:
	FUNC1(buf);
	return dsz;
}