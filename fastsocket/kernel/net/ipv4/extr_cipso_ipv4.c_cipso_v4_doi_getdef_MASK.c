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
typedef  int /*<<< orphan*/  u32 ;
struct cipso_v4_doi {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cipso_v4_doi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct cipso_v4_doi *FUNC4(u32 doi)
{
	struct cipso_v4_doi *doi_def;

	FUNC2();
	doi_def = FUNC1(doi);
	if (doi_def == NULL)
		goto doi_getdef_return;
	if (!FUNC0(&doi_def->refcount))
		doi_def = NULL;

doi_getdef_return:
	FUNC3();
	return doi_def;
}