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
struct tipc_name_table_query {int /*<<< orphan*/  upbound; int /*<<< orphan*/  lowbound; int /*<<< orphan*/  type; int /*<<< orphan*/  depth; } ;
struct sk_buff {scalar_t__ data; } ;
struct print_buf {int dummy; } ;

/* Variables and functions */
 int MAX_NAME_TBL_QUERY ; 
 int /*<<< orphan*/  TIPC_CFG_TLV_ERROR ; 
 int /*<<< orphan*/  TIPC_TLV_NAME_TBL_QUERY ; 
 int /*<<< orphan*/  TIPC_TLV_ULTRA_STRING ; 
 int /*<<< orphan*/  FUNC0 (void const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct print_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  FUNC11 (struct print_buf*,scalar_t__,int) ; 
 int FUNC12 (struct print_buf*) ; 

struct sk_buff *FUNC13(const void *req_tlv_area, int req_tlv_space)
{
	struct sk_buff *buf;
	struct tipc_name_table_query *argv;
	struct tlv_desc *rep_tlv;
	struct print_buf b;
	int str_len;

	if (!FUNC0(req_tlv_area, req_tlv_space, TIPC_TLV_NAME_TBL_QUERY))
		return FUNC10(TIPC_CFG_TLV_ERROR);

	buf = FUNC9(FUNC3(MAX_NAME_TBL_QUERY));
	if (!buf)
		return NULL;

	rep_tlv = (struct tlv_desc *)buf->data;
	FUNC11(&b, FUNC1(rep_tlv), MAX_NAME_TBL_QUERY);
	argv = (struct tipc_name_table_query *)FUNC1(req_tlv_area);
	FUNC6(&tipc_nametbl_lock);
	FUNC4(&b, FUNC5(argv->depth), FUNC5(argv->type),
		     FUNC5(argv->lowbound), FUNC5(argv->upbound));
	FUNC7(&tipc_nametbl_lock);
	str_len = FUNC12(&b);

	FUNC8(buf, FUNC3(str_len));
	FUNC2(rep_tlv, TIPC_TLV_ULTRA_STRING, NULL, str_len);

	return buf;
}