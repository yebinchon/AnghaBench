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
struct role_trans {struct role_trans* next; struct ocontext* head; struct role_trans* fstype; } ;
struct role_allow {struct role_allow* next; struct ocontext* head; struct role_allow* fstype; } ;
struct ebitmap {int dummy; } ;
struct TYPE_4__ {int nprim; } ;
struct policydb {struct ebitmap permissive_map; struct ebitmap policycaps; scalar_t__ type_attr_map_array; TYPE_2__ p_types; int /*<<< orphan*/  range_tr; struct role_trans* role_allow; struct role_trans* role_tr; struct role_trans* genfs; struct ocontext** ocontexts; int /*<<< orphan*/  te_avtab; struct role_trans* type_val_to_struct; struct role_trans* user_val_to_struct; struct role_trans* role_val_to_struct; struct role_trans* class_val_to_struct; struct role_trans** sym_val_to_name; TYPE_1__* symtab; } ;
struct ocontext {struct ocontext* next; } ;
struct genfs {struct genfs* next; struct ocontext* head; struct genfs* fstype; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int OCON_FSUSE ; 
 int OCON_NUM ; 
 int SYM_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct policydb*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * destroy_f ; 
 int /*<<< orphan*/  FUNC3 (struct ebitmap*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct ebitmap* FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct role_trans*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocontext*,int) ; 
 int /*<<< orphan*/  range_tr_destroy ; 

void FUNC10(struct policydb *p)
{
	struct ocontext *c, *ctmp;
	struct genfs *g, *gtmp;
	int i;
	struct role_allow *ra, *lra = NULL;
	struct role_trans *tr, *ltr = NULL;

	for (i = 0; i < SYM_NUM; i++) {
		FUNC2();
		FUNC7(p->symtab[i].table, destroy_f[i], NULL);
		FUNC6(p->symtab[i].table);
	}

	for (i = 0; i < SYM_NUM; i++)
		FUNC8(p->sym_val_to_name[i]);

	FUNC8(p->class_val_to_struct);
	FUNC8(p->role_val_to_struct);
	FUNC8(p->user_val_to_struct);
	FUNC8(p->type_val_to_struct);

	FUNC0(&p->te_avtab);

	for (i = 0; i < OCON_NUM; i++) {
		FUNC2();
		c = p->ocontexts[i];
		while (c) {
			ctmp = c;
			c = c->next;
			FUNC9(ctmp, i);
		}
		p->ocontexts[i] = NULL;
	}

	g = p->genfs;
	while (g) {
		FUNC2();
		FUNC8(g->fstype);
		c = g->head;
		while (c) {
			ctmp = c;
			c = c->next;
			FUNC9(ctmp, OCON_FSUSE);
		}
		gtmp = g;
		g = g->next;
		FUNC8(gtmp);
	}
	p->genfs = NULL;

	FUNC1(p);

	for (tr = p->role_tr; tr; tr = tr->next) {
		FUNC2();
		FUNC8(ltr);
		ltr = tr;
	}
	FUNC8(ltr);

	for (ra = p->role_allow; ra; ra = ra->next) {
		FUNC2();
		FUNC8(lra);
		lra = ra;
	}
	FUNC8(lra);

	FUNC7(p->range_tr, range_tr_destroy, NULL);
	FUNC6(p->range_tr);

	if (p->type_attr_map_array) {
		for (i = 0; i < p->p_types.nprim; i++) {
			struct ebitmap *e;

			e = FUNC5(p->type_attr_map_array, i);
			if (!e)
				continue;
			FUNC3(e);
		}
		FUNC4(p->type_attr_map_array);
	}
	FUNC3(&p->policycaps);
	FUNC3(&p->permissive_map);

	return;
}