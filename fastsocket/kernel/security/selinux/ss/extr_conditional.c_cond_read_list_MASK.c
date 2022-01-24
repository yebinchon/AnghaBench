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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  nel; } ;
struct policydb {struct cond_node* cond_list; TYPE_1__ te_avtab; int /*<<< orphan*/  te_cond_avtab; } ;
struct cond_node {struct cond_node* next; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cond_node*) ; 
 int FUNC2 (struct policydb*,struct cond_node*,void*) ; 
 struct cond_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int) ; 

int FUNC6(struct policydb *p, void *fp)
{
	struct cond_node *node, *last = NULL;
	__le32 buf[1];
	u32 i, len;
	int rc;

	rc = FUNC5(buf, fp, sizeof buf);
	if (rc)
		return rc;

	len = FUNC4(buf[0]);

	rc = FUNC0(&(p->te_cond_avtab), p->te_avtab.nel);
	if (rc)
		goto err;

	for (i = 0; i < len; i++) {
		rc = -ENOMEM;
		node = FUNC3(sizeof(struct cond_node), GFP_KERNEL);
		if (!node)
			goto err;

		rc = FUNC2(p, node, fp);
		if (rc)
			goto err;

		if (i == 0)
			p->cond_list = node;
		else
			last->next = node;
		last = node;
	}
	return 0;
err:
	FUNC1(p->cond_list);
	p->cond_list = NULL;
	return rc;
}