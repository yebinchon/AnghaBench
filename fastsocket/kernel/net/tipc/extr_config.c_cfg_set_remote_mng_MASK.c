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
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_CFG_TLV_ERROR ; 
 int /*<<< orphan*/  TIPC_TLV_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_tlv_area ; 
 int /*<<< orphan*/  req_tlv_space ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 () ; 
 int tipc_remote_management ; 

__attribute__((used)) static struct sk_buff *FUNC5(void)
{
	u32 value;

	if (!FUNC0(req_tlv_area, req_tlv_space, TIPC_TLV_UNSIGNED))
		return FUNC3(TIPC_CFG_TLV_ERROR);

	value = FUNC2(*(__be32 *)FUNC1(req_tlv_area));
	tipc_remote_management = (value != 0);
	return FUNC4();
}