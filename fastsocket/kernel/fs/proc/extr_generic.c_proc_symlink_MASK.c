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
struct proc_dir_entry {struct proc_dir_entry* data; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFLNK ; 
 int S_IRUGO ; 
 int S_IWUGO ; 
 int S_IXUGO ; 
 struct proc_dir_entry* FUNC0 (struct proc_dir_entry**,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct proc_dir_entry*,struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

struct proc_dir_entry *FUNC6(const char *name,
		struct proc_dir_entry *parent, const char *dest)
{
	struct proc_dir_entry *ent;

	ent = FUNC0(&parent, name,
			  (S_IFLNK | S_IRUGO | S_IWUGO | S_IXUGO),1);

	if (ent) {
		ent->data = FUNC2((ent->size=FUNC5(dest))+1, GFP_KERNEL);
		if (ent->data) {
			FUNC4((char*)ent->data,dest);
			if (FUNC3(parent, ent) < 0) {
				FUNC1(ent->data);
				FUNC1(ent);
				ent = NULL;
			}
		} else {
			FUNC1(ent);
			ent = NULL;
		}
	}
	return ent;
}