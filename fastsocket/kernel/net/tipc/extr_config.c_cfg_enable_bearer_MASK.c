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
struct tipc_bearer_config {int /*<<< orphan*/  priority; int /*<<< orphan*/  detect_scope; int /*<<< orphan*/  name; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 char* TIPC_CFG_TLV_ERROR ; 
 int /*<<< orphan*/  TIPC_TLV_BEARER_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_tlv_area ; 
 int /*<<< orphan*/  req_tlv_space ; 
 struct sk_buff* FUNC3 (char*) ; 
 struct sk_buff* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC6(void)
{
	struct tipc_bearer_config *args;

	if (!FUNC0(req_tlv_area, req_tlv_space, TIPC_TLV_BEARER_CONFIG))
		return FUNC3(TIPC_CFG_TLV_ERROR);

	args = (struct tipc_bearer_config *)FUNC1(req_tlv_area);
	if (FUNC5(args->name,
			       FUNC2(args->detect_scope),
			       FUNC2(args->priority)))
		return FUNC3("unable to enable bearer");

	return FUNC4();
}