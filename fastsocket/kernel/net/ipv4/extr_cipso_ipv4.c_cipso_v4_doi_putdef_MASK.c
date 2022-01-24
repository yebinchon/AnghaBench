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
struct cipso_v4_doi {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cipso_v4_doi_free_rcu ; 
 int /*<<< orphan*/  cipso_v4_doi_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cipso_v4_doi *doi_def)
{
	if (doi_def == NULL)
		return;

	if (!FUNC0(&doi_def->refcount))
		return;
	FUNC4(&cipso_v4_doi_list_lock);
	FUNC3(&doi_def->list);
	FUNC5(&cipso_v4_doi_list_lock);

	FUNC2();
	FUNC1(&doi_def->rcu, cipso_v4_doi_free_rcu);
}