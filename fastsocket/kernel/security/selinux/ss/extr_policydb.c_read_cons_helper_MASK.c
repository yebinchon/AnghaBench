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
struct constraint_node {struct constraint_expr* expr; void* permissions; struct constraint_node* next; } ;
struct constraint_expr {int expr_type; int attr; int /*<<< orphan*/  names; void* op; struct constraint_expr* next; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  CEXPR_AND 132 
#define  CEXPR_ATTR 131 
 int /*<<< orphan*/  CEXPR_MAXDEPTH ; 
#define  CEXPR_NAMES 130 
#define  CEXPR_NOT 129 
#define  CEXPR_OR 128 
 int CEXPR_XTARGET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC4(struct constraint_node **nodep, int ncons,
			    int allowxtarget, void *fp)
{
	struct constraint_node *c, *lc;
	struct constraint_expr *e, *le;
	__le32 buf[3];
	u32 nexpr;
	int rc, i, j, depth;

	lc = NULL;
	for (i = 0; i < ncons; i++) {
		c = FUNC1(sizeof(*c), GFP_KERNEL);
		if (!c)
			return -ENOMEM;

		if (lc)
			lc->next = c;
		else
			*nodep = c;

		rc = FUNC3(buf, fp, (sizeof(u32) * 2));
		if (rc < 0)
			return rc;
		c->permissions = FUNC2(buf[0]);
		nexpr = FUNC2(buf[1]);
		le = NULL;
		depth = -1;
		for (j = 0; j < nexpr; j++) {
			e = FUNC1(sizeof(*e), GFP_KERNEL);
			if (!e)
				return -ENOMEM;

			if (le)
				le->next = e;
			else
				c->expr = e;

			rc = FUNC3(buf, fp, (sizeof(u32) * 3));
			if (rc < 0)
				return rc;
			e->expr_type = FUNC2(buf[0]);
			e->attr = FUNC2(buf[1]);
			e->op = FUNC2(buf[2]);

			switch (e->expr_type) {
			case CEXPR_NOT:
				if (depth < 0)
					return -EINVAL;
				break;
			case CEXPR_AND:
			case CEXPR_OR:
				if (depth < 1)
					return -EINVAL;
				depth--;
				break;
			case CEXPR_ATTR:
				if (depth == (CEXPR_MAXDEPTH - 1))
					return -EINVAL;
				depth++;
				break;
			case CEXPR_NAMES:
				if (!allowxtarget && (e->attr & CEXPR_XTARGET))
					return -EINVAL;
				if (depth == (CEXPR_MAXDEPTH - 1))
					return -EINVAL;
				depth++;
				if (FUNC0(&e->names, fp))
					return -EINVAL;
				break;
			default:
				return -EINVAL;
			}
			le = e;
		}
		if (depth != 0)
			return -EINVAL;
		lc = c;
	}

	return 0;
}