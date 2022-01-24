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
struct netlbl_audit {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NLBL_MGMT_A_DOMAIN ; 
 int FUNC0 (char*,struct netlbl_audit*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct netlbl_audit*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct genl_info *info)
{
	char *domain;
	struct netlbl_audit audit_info;

	if (!info->attrs[NLBL_MGMT_A_DOMAIN])
		return -EINVAL;

	FUNC1(skb, &audit_info);

	domain = FUNC2(info->attrs[NLBL_MGMT_A_DOMAIN]);
	return FUNC0(domain, &audit_info);
}