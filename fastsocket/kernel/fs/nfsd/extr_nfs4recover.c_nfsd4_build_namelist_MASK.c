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
typedef  int /*<<< orphan*/  u64 ;
struct name_list {char* name; int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HEXDIR_LEN ; 
 struct name_list* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC3(void *arg, const char *name, int namlen,
		loff_t offset, u64 ino, unsigned int d_type)
{
	struct list_head *names = arg;
	struct name_list *entry;

	if (namlen != HEXDIR_LEN - 1)
		return 0;
	entry = FUNC0(sizeof(struct name_list), GFP_KERNEL);
	if (entry == NULL)
		return -ENOMEM;
	FUNC2(entry->name, name, HEXDIR_LEN - 1);
	entry->name[HEXDIR_LEN - 1] = '\0';
	FUNC1(&entry->list, names);
	return 0;
}