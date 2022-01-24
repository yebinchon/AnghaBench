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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 char* TIPC_CFG_TLV_ERROR ; 
 int /*<<< orphan*/  TIPC_TLV_BEARER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_tlv_area ; 
 int /*<<< orphan*/  req_tlv_space ; 
 struct sk_buff* FUNC2 (char*) ; 
 struct sk_buff* FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(void)
{
	if (!FUNC0(req_tlv_area, req_tlv_space, TIPC_TLV_BEARER_NAME))
		return FUNC2(TIPC_CFG_TLV_ERROR);

	if (FUNC4((char *)FUNC1(req_tlv_area)))
		return FUNC2("unable to disable bearer");

	return FUNC3();
}