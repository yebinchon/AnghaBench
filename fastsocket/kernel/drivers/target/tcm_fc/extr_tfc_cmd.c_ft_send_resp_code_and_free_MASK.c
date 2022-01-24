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
struct ft_cmd {int dummy; } ;
typedef  enum fcp_resp_rsp_codes { ____Placeholder_fcp_resp_rsp_codes } fcp_resp_rsp_codes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ft_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ft_cmd*,int) ; 

__attribute__((used)) static void FUNC2(struct ft_cmd *cmd,
				      enum fcp_resp_rsp_codes code)
{
	FUNC1(cmd, code);
	FUNC0(cmd);
}