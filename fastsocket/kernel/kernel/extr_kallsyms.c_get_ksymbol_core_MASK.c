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
struct kallsym_iter {unsigned int nameoff; char* module_name; size_t pos; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * kallsyms_addresses ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned long FUNC2(struct kallsym_iter *iter)
{
	unsigned off = iter->nameoff;

	iter->module_name[0] = '\0';
	iter->value = kallsyms_addresses[iter->pos];

	iter->type = FUNC1(off);

	off = FUNC0(off, iter->name);

	return off - iter->nameoff;
}