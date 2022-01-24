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
struct proc_dir_entry {int dummy; } ;
typedef  int mode_t ;

/* Variables and functions */
 int S_IFDIR ; 
 struct proc_dir_entry* FUNC0 (struct proc_dir_entry**,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 scalar_t__ FUNC2 (struct proc_dir_entry*,struct proc_dir_entry*) ; 

struct proc_dir_entry *FUNC3(const char *name, mode_t mode,
		struct proc_dir_entry *parent)
{
	struct proc_dir_entry *ent;

	ent = FUNC0(&parent, name, S_IFDIR | mode, 2);
	if (ent) {
		if (FUNC2(parent, ent) < 0) {
			FUNC1(ent);
			ent = NULL;
		}
	}
	return ent;
}