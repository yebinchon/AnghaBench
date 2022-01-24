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
struct se_portal_group {int dummy; } ;
struct se_node_acl {int dummy; } ;
struct ft_node_acl {struct se_node_acl se_node_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ft_node_acl* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ft_node_acl*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct se_node_acl *FUNC3(struct se_portal_group *se_tpg)
{
	struct ft_node_acl *acl;

	acl = FUNC0(sizeof(*acl), GFP_KERNEL);
	if (!acl) {
		FUNC2("Unable to allocate struct ft_node_acl\n");
		return NULL;
	}
	FUNC1("acl %p\n", acl);
	return &acl->se_node_acl;
}