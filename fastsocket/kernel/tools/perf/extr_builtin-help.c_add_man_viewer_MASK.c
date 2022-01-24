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
struct man_viewer_list {int /*<<< orphan*/  name; struct man_viewer_list* next; } ;

/* Variables and functions */
 struct man_viewer_list* man_viewer_list ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct man_viewer_list* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const char *name)
{
	struct man_viewer_list **p = &man_viewer_list;
	size_t len = FUNC0(name);

	while (*p)
		p = &((*p)->next);
	*p = FUNC2(sizeof(**p) + len + 1);
	FUNC1((*p)->name, name, len);
}