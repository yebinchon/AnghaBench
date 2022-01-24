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
typedef  int u32 ;
struct policydb {int dummy; } ;
struct constraint_node {int permissions; struct constraint_expr* expr; struct constraint_node* next; } ;
struct constraint_expr {int expr_type; int attr; int op; int /*<<< orphan*/  names; struct constraint_expr* next; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  CEXPR_NAMES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC3(struct policydb *p, struct constraint_node *node,
			     void *fp)
{
	struct constraint_node *c;
	struct constraint_expr *e;
	__le32 buf[3];
	u32 nel;
	int rc;

	for (c = node; c; c = c->next) {
		nel = 0;
		for (e = c->expr; e; e = e->next)
			nel++;
		buf[0] = FUNC0(c->permissions);
		buf[1] = FUNC0(nel);
		rc = FUNC2(buf, sizeof(u32), 2, fp);
		if (rc)
			return rc;
		for (e = c->expr; e; e = e->next) {
			buf[0] = FUNC0(e->expr_type);
			buf[1] = FUNC0(e->attr);
			buf[2] = FUNC0(e->op);
			rc = FUNC2(buf, sizeof(u32), 3, fp);
			if (rc)
				return rc;

			switch (e->expr_type) {
			case CEXPR_NAMES:
				rc = FUNC1(&e->names, fp);
				if (rc)
					return rc;
				break;
			default:
				break;
			}
		}
	}

	return 0;
}