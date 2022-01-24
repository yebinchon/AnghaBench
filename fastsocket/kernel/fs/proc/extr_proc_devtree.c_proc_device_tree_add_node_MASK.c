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
struct property {char* name; struct property* next; } ;
struct proc_dir_entry {int dummy; } ;
struct device_node {char* full_name; struct property* properties; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct proc_dir_entry*,struct property*,char const*) ; 
 scalar_t__ FUNC1 (struct proc_dir_entry*,char const*) ; 
 char* FUNC2 (struct device_node*,struct proc_dir_entry*,char const*) ; 
 struct device_node* FUNC3 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct proc_dir_entry* FUNC5 (char const*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,struct proc_dir_entry*) ; 
 char* FUNC7 (char*,char) ; 

void FUNC8(struct device_node *np,
			       struct proc_dir_entry *de)
{
	struct property *pp;
	struct proc_dir_entry *ent;
	struct device_node *child;
	const char *p;

	FUNC6(np, de);
	for (child = NULL; (child = FUNC3(np, child));) {
		/* Use everything after the last slash, or the full name */
		p = FUNC7(child->full_name, '/');
		if (!p)
			p = child->full_name;
		else
			++p;

		if (FUNC1(de, p))
			p = FUNC2(np, de, p);

		ent = FUNC5(p, de);
		if (ent == NULL)
			break;
		FUNC8(child, ent);
	}
	FUNC4(child);

	for (pp = np->properties; pp != NULL; pp = pp->next) {
		p = pp->name;

		if (FUNC1(de, p))
			p = FUNC2(np, de, p);

		ent = FUNC0(de, pp, p);
		if (ent == NULL)
			break;
	}
}