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
struct qstr {int len; int /*<<< orphan*/  name; } ;
struct ctl_table {scalar_t__ procname; scalar_t__ ctl_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static struct ctl_table *FUNC2(struct ctl_table *p, struct qstr *name)
{
	int len;
	for ( ; p->ctl_name || p->procname; p++) {

		if (!p->procname)
			continue;

		len = FUNC1(p->procname);
		if (len != name->len)
			continue;

		if (FUNC0(p->procname, name->name, len) != 0)
			continue;

		/* I have a match */
		return p;
	}
	return NULL;
}