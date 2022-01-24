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
 struct dso* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct dso*) ; 
 struct dso* FUNC3 (struct list_head*,char const*) ; 

struct dso *FUNC4(struct list_head *head, const char *name)
{
	struct dso *dso = FUNC3(head, name);

	if (!dso) {
		dso = FUNC0(name);
		if (dso != NULL) {
			FUNC2(head, dso);
			FUNC1(dso);
		}
	}

	return dso;
}