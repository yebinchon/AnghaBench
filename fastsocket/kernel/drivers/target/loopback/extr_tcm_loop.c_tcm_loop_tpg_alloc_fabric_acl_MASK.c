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
struct se_node_acl {int dummy; } ;
struct tcm_loop_nacl {struct se_node_acl se_node_acl; } ;
struct se_portal_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tcm_loop_nacl* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct se_node_acl *FUNC2(
	struct se_portal_group *se_tpg)
{
	struct tcm_loop_nacl *tl_nacl;

	tl_nacl = FUNC0(sizeof(struct tcm_loop_nacl), GFP_KERNEL);
	if (!tl_nacl) {
		FUNC1("Unable to allocate struct tcm_loop_nacl\n");
		return NULL;
	}

	return &tl_nacl->se_node_acl;
}