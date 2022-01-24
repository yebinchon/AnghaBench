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
struct property {scalar_t__ length; } ;
struct proc_dir_entry {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  S_IRUSR ; 
 struct proc_dir_entry* FUNC0 (char const*,int /*<<< orphan*/ ,struct proc_dir_entry*,int /*<<< orphan*/ ,struct property*) ; 
 int /*<<< orphan*/  property_read_proc ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static struct proc_dir_entry *
FUNC2(struct proc_dir_entry *de, struct property *pp,
		const char *name)
{
	struct proc_dir_entry *ent;

	/*
	 * Unfortunately proc_register puts each new entry
	 * at the beginning of the list.  So we rearrange them.
	 */
	ent = FUNC0(name,
				     FUNC1(name, "security-", 9)
				     ? S_IRUGO : S_IRUSR, de,
				     property_read_proc, pp);
	if (ent == NULL)
		return NULL;

	if (!FUNC1(name, "security-", 9))
		ent->size = 0; /* don't leak number of password chars */
	else
		ent->size = pp->length;

	return ent;
}