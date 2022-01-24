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
struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct cdev {int /*<<< orphan*/  kobj; struct module* owner; } ;

/* Variables and functions */
 struct kobject* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 

__attribute__((used)) static struct kobject *FUNC3(struct cdev *p)
{
	struct module *owner = p->owner;
	struct kobject *kobj;

	if (owner && !FUNC2(owner))
		return NULL;
	kobj = FUNC0(&p->kobj);
	if (!kobj)
		FUNC1(owner);
	return kobj;
}