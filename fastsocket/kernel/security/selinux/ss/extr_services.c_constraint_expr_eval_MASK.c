#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct role_datum {int /*<<< orphan*/  dominates; } ;
struct mls_level {int dummy; } ;
struct TYPE_3__ {struct mls_level* level; } ;
struct context {int /*<<< orphan*/  type; int /*<<< orphan*/  role; int /*<<< orphan*/  user; TYPE_1__ range; } ;
struct constraint_expr {int expr_type; int attr; int /*<<< orphan*/  names; int /*<<< orphan*/  op; struct constraint_expr* next; } ;
struct TYPE_4__ {struct role_datum** role_val_to_struct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  CEXPR_AND 146 
#define  CEXPR_ATTR 145 
#define  CEXPR_DOM 144 
#define  CEXPR_DOMBY 143 
#define  CEXPR_EQ 142 
#define  CEXPR_H1H2 141 
#define  CEXPR_H1L2 140 
#define  CEXPR_INCOMP 139 
#define  CEXPR_L1H1 138 
#define  CEXPR_L1H2 137 
#define  CEXPR_L1L2 136 
#define  CEXPR_L2H2 135 
 int CEXPR_MAXDEPTH ; 
#define  CEXPR_NAMES 134 
#define  CEXPR_NEQ 133 
#define  CEXPR_NOT 132 
#define  CEXPR_OR 131 
#define  CEXPR_ROLE 130 
 int CEXPR_TARGET ; 
#define  CEXPR_TYPE 129 
#define  CEXPR_USER 128 
 int CEXPR_XTARGET ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mls_level*,struct mls_level*) ; 
 int FUNC4 (struct mls_level*,struct mls_level*) ; 
 int FUNC5 (struct mls_level*,struct mls_level*) ; 
 TYPE_2__ policydb ; 

__attribute__((used)) static int FUNC6(struct context *scontext,
				struct context *tcontext,
				struct context *xcontext,
				struct constraint_expr *cexpr)
{
	u32 val1, val2;
	struct context *c;
	struct role_datum *r1, *r2;
	struct mls_level *l1, *l2;
	struct constraint_expr *e;
	int s[CEXPR_MAXDEPTH];
	int sp = -1;

	for (e = cexpr; e; e = e->next) {
		switch (e->expr_type) {
		case CEXPR_NOT:
			FUNC1(sp < 0);
			s[sp] = !s[sp];
			break;
		case CEXPR_AND:
			FUNC1(sp < 1);
			sp--;
			s[sp] &= s[sp+1];
			break;
		case CEXPR_OR:
			FUNC1(sp < 1);
			sp--;
			s[sp] |= s[sp+1];
			break;
		case CEXPR_ATTR:
			if (sp == (CEXPR_MAXDEPTH-1))
				return 0;
			switch (e->attr) {
			case CEXPR_USER:
				val1 = scontext->user;
				val2 = tcontext->user;
				break;
			case CEXPR_TYPE:
				val1 = scontext->type;
				val2 = tcontext->type;
				break;
			case CEXPR_ROLE:
				val1 = scontext->role;
				val2 = tcontext->role;
				r1 = policydb.role_val_to_struct[val1 - 1];
				r2 = policydb.role_val_to_struct[val2 - 1];
				switch (e->op) {
				case CEXPR_DOM:
					s[++sp] = FUNC2(&r1->dominates,
								  val2 - 1);
					continue;
				case CEXPR_DOMBY:
					s[++sp] = FUNC2(&r2->dominates,
								  val1 - 1);
					continue;
				case CEXPR_INCOMP:
					s[++sp] = (!FUNC2(&r1->dominates,
								    val2 - 1) &&
						   !FUNC2(&r2->dominates,
								    val1 - 1));
					continue;
				default:
					break;
				}
				break;
			case CEXPR_L1L2:
				l1 = &(scontext->range.level[0]);
				l2 = &(tcontext->range.level[0]);
				goto mls_ops;
			case CEXPR_L1H2:
				l1 = &(scontext->range.level[0]);
				l2 = &(tcontext->range.level[1]);
				goto mls_ops;
			case CEXPR_H1L2:
				l1 = &(scontext->range.level[1]);
				l2 = &(tcontext->range.level[0]);
				goto mls_ops;
			case CEXPR_H1H2:
				l1 = &(scontext->range.level[1]);
				l2 = &(tcontext->range.level[1]);
				goto mls_ops;
			case CEXPR_L1H1:
				l1 = &(scontext->range.level[0]);
				l2 = &(scontext->range.level[1]);
				goto mls_ops;
			case CEXPR_L2H2:
				l1 = &(tcontext->range.level[0]);
				l2 = &(tcontext->range.level[1]);
				goto mls_ops;
mls_ops:
			switch (e->op) {
			case CEXPR_EQ:
				s[++sp] = FUNC4(l1, l2);
				continue;
			case CEXPR_NEQ:
				s[++sp] = !FUNC4(l1, l2);
				continue;
			case CEXPR_DOM:
				s[++sp] = FUNC3(l1, l2);
				continue;
			case CEXPR_DOMBY:
				s[++sp] = FUNC3(l2, l1);
				continue;
			case CEXPR_INCOMP:
				s[++sp] = FUNC5(l2, l1);
				continue;
			default:
				FUNC0();
				return 0;
			}
			break;
			default:
				FUNC0();
				return 0;
			}

			switch (e->op) {
			case CEXPR_EQ:
				s[++sp] = (val1 == val2);
				break;
			case CEXPR_NEQ:
				s[++sp] = (val1 != val2);
				break;
			default:
				FUNC0();
				return 0;
			}
			break;
		case CEXPR_NAMES:
			if (sp == (CEXPR_MAXDEPTH-1))
				return 0;
			c = scontext;
			if (e->attr & CEXPR_TARGET)
				c = tcontext;
			else if (e->attr & CEXPR_XTARGET) {
				c = xcontext;
				if (!c) {
					FUNC0();
					return 0;
				}
			}
			if (e->attr & CEXPR_USER)
				val1 = c->user;
			else if (e->attr & CEXPR_ROLE)
				val1 = c->role;
			else if (e->attr & CEXPR_TYPE)
				val1 = c->type;
			else {
				FUNC0();
				return 0;
			}

			switch (e->op) {
			case CEXPR_EQ:
				s[++sp] = FUNC2(&e->names, val1 - 1);
				break;
			case CEXPR_NEQ:
				s[++sp] = !FUNC2(&e->names, val1 - 1);
				break;
			default:
				FUNC0();
				return 0;
			}
			break;
		default:
			FUNC0();
			return 0;
		}
	}

	FUNC1(sp != 0);
	return s[0];
}