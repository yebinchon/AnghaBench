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
typedef  void const tlv_desc ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int MAX_LINK_STATS_INFO ; 
 char* TIPC_CFG_TLV_ERROR ; 
 int /*<<< orphan*/  TIPC_TLV_LINK_NAME ; 
 int /*<<< orphan*/  TIPC_TLV_ULTRA_STRING ; 
 int /*<<< orphan*/  FUNC0 (void const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (char*) ; 
 int FUNC8 (char*,char*,int) ; 

struct sk_buff *FUNC9(const void *req_tlv_area, int req_tlv_space)
{
	struct sk_buff *buf;
	struct tlv_desc *rep_tlv;
	int str_len;

	if (!FUNC0(req_tlv_area, req_tlv_space, TIPC_TLV_LINK_NAME))
		return FUNC7(TIPC_CFG_TLV_ERROR);

	buf = FUNC6(FUNC3(MAX_LINK_STATS_INFO));
	if (!buf)
		return NULL;

	rep_tlv = (struct tlv_desc *)buf->data;

	str_len = FUNC8((char *)FUNC1(req_tlv_area),
				  (char *)FUNC1(rep_tlv), MAX_LINK_STATS_INFO);
	if (!str_len) {
		FUNC4(buf);
		return FUNC7("link not found");
	}

	FUNC5(buf, FUNC3(str_len));
	FUNC2(rep_tlv, TIPC_TLV_ULTRA_STRING, NULL, str_len);

	return buf;
}