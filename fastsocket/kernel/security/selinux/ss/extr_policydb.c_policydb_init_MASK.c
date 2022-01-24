#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct policydb {TYPE_1__* symtab; int /*<<< orphan*/  permissive_map; int /*<<< orphan*/  policycaps; int /*<<< orphan*/  range_tr; int /*<<< orphan*/  te_avtab; } ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int SYM_NUM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct policydb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct policydb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rangetr_cmp ; 
 int /*<<< orphan*/  rangetr_hash ; 
 int FUNC6 (struct policydb*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * symtab_sizes ; 

__attribute__((used)) static int FUNC8(struct policydb *p)
{
	int i, rc;

	FUNC5(p, 0, sizeof(*p));

	for (i = 0; i < SYM_NUM; i++) {
		rc = FUNC7(&p->symtab[i], symtab_sizes[i]);
		if (rc)
			goto out_free_symtab;
	}

	rc = FUNC0(&p->te_avtab);
	if (rc)
		goto out_free_symtab;

	rc = FUNC6(p);
	if (rc)
		goto out_free_symtab;

	rc = FUNC1(p);
	if (rc)
		goto out_free_symtab;

	p->range_tr = FUNC3(rangetr_hash, rangetr_cmp, 256);
	if (!p->range_tr)
		goto out_free_symtab;

	FUNC2(&p->policycaps);
	FUNC2(&p->permissive_map);

out:
	return rc;

out_free_symtab:
	for (i = 0; i < SYM_NUM; i++)
		FUNC4(p->symtab[i].table);
	goto out;
}