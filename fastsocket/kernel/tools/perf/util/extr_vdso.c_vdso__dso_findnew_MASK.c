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
struct list_head {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDSO__MAP_NAME ; 
 struct dso* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct dso*) ; 
 struct dso* FUNC3 (struct list_head*,int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 

struct dso *FUNC5(struct list_head *head)
{
	struct dso *dso = FUNC3(head, VDSO__MAP_NAME);

	if (!dso) {
		char *file;

		file = FUNC4();
		if (!file)
			return NULL;

		dso = FUNC0(VDSO__MAP_NAME);
		if (dso != NULL) {
			FUNC2(head, dso);
			FUNC1(dso, file);
		}
	}

	return dso;
}