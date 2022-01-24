#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tlv_desc {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct print_buf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 TYPE_1__* TIPC_LOG ; 
 int /*<<< orphan*/  TIPC_TLV_ULTRA_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct tlv_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlv_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  print_lock ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct print_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct print_buf*,TYPE_1__*) ; 

struct sk_buff *FUNC13(void)
{
	struct sk_buff *reply;

	FUNC5(&print_lock);
	if (!TIPC_LOG->buf) {
		FUNC6(&print_lock);
		reply = FUNC9("log not activated\n");
	} else if (FUNC10(TIPC_LOG)) {
		FUNC6(&print_lock);
		reply = FUNC9("log is empty\n");
	}
	else {
		struct tlv_desc *rep_tlv;
		struct print_buf pb;
		int str_len;

		str_len = FUNC3(TIPC_LOG->size, 32768u);
		FUNC6(&print_lock);
		reply = FUNC8(FUNC2(str_len));
		if (reply) {
			rep_tlv = (struct tlv_desc *)reply->data;
			FUNC11(&pb, FUNC0(rep_tlv), str_len);
			FUNC5(&print_lock);
			FUNC12(&pb, TIPC_LOG);
			FUNC6(&print_lock);
			str_len = FUNC7(FUNC0(rep_tlv)) + 1;
			FUNC4(reply, FUNC2(str_len));
			FUNC1(rep_tlv, TIPC_TLV_ULTRA_STRING, NULL, str_len);
		}
	}
	return reply;
}