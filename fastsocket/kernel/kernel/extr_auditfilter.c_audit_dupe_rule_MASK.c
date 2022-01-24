#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct audit_watch {int dummy; } ;
struct audit_krule {int field_count; char* filterkey; struct audit_watch* watch; TYPE_1__* fields; int /*<<< orphan*/  tree; int /*<<< orphan*/  inode_f; int /*<<< orphan*/  buflen; int /*<<< orphan*/  prio; int /*<<< orphan*/ * mask; int /*<<< orphan*/  action; int /*<<< orphan*/  listnr; int /*<<< orphan*/  flags; int /*<<< orphan*/  vers_ops; } ;
struct audit_field {int dummy; } ;
struct audit_entry {struct audit_krule rule; } ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int AUDIT_BITMASK_SIZE ; 
#define  AUDIT_FILTERKEY 138 
#define  AUDIT_OBJ_LEV_HIGH 137 
#define  AUDIT_OBJ_LEV_LOW 136 
#define  AUDIT_OBJ_ROLE 135 
#define  AUDIT_OBJ_TYPE 134 
#define  AUDIT_OBJ_USER 133 
#define  AUDIT_SUBJ_CLR 132 
#define  AUDIT_SUBJ_ROLE 131 
#define  AUDIT_SUBJ_SEN 130 
#define  AUDIT_SUBJ_TYPE 129 
#define  AUDIT_SUBJ_USER 128 
 int ENOMEM ; 
 struct audit_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_watch*) ; 
 struct audit_entry* FUNC4 (int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int) ; 

struct audit_entry *FUNC8(struct audit_krule *old,
				    struct audit_watch *watch)
{
	u32 fcount = old->field_count;
	struct audit_entry *entry;
	struct audit_krule *new;
	char *fk;
	int i, err = 0;

	entry = FUNC4(fcount);
	if (FUNC7(!entry))
		return FUNC0(-ENOMEM);

	new = &entry->rule;
	new->vers_ops = old->vers_ops;
	new->flags = old->flags;
	new->listnr = old->listnr;
	new->action = old->action;
	for (i = 0; i < AUDIT_BITMASK_SIZE; i++)
		new->mask[i] = old->mask[i];
	new->prio = old->prio;
	new->buflen = old->buflen;
	new->inode_f = old->inode_f;
	new->watch = NULL;
	new->field_count = old->field_count;
	/*
	 * note that we are OK with not refcounting here; audit_match_tree()
	 * never dereferences tree and we can't get false positives there
	 * since we'd have to have rule gone from the list *and* removed
	 * before the chunks found by lookup had been allocated, i.e. before
	 * the beginning of list scan.
	 */
	new->tree = old->tree;
	FUNC6(new->fields, old->fields, sizeof(struct audit_field) * fcount);

	/* deep copy this information, updating the lsm_rule fields, because
	 * the originals will all be freed when the old rule is freed. */
	for (i = 0; i < fcount; i++) {
		switch (new->fields[i].type) {
		case AUDIT_SUBJ_USER:
		case AUDIT_SUBJ_ROLE:
		case AUDIT_SUBJ_TYPE:
		case AUDIT_SUBJ_SEN:
		case AUDIT_SUBJ_CLR:
		case AUDIT_OBJ_USER:
		case AUDIT_OBJ_ROLE:
		case AUDIT_OBJ_TYPE:
		case AUDIT_OBJ_LEV_LOW:
		case AUDIT_OBJ_LEV_HIGH:
			err = FUNC1(&new->fields[i],
						       &old->fields[i]);
			break;
		case AUDIT_FILTERKEY:
			fk = FUNC5(old->filterkey, GFP_KERNEL);
			if (FUNC7(!fk))
				err = -ENOMEM;
			else
				new->filterkey = fk;
		}
		if (err) {
			FUNC2(entry);
			return FUNC0(err);
		}
	}

	if (watch) {
		FUNC3(watch);
		new->watch = watch;
	}

	return entry;
}