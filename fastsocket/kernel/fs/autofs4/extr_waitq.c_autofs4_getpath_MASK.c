#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; struct dentry* d_parent; } ;
struct autofs_sb_info {TYPE_1__* sb; } ;
struct TYPE_3__ {struct dentry* s_root; } ;

/* Variables and functions */
 int NAME_MAX ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct autofs_sb_info *sbi,
			   struct dentry *dentry, char **name)
{
	struct dentry *root = sbi->sb->s_root;
	struct dentry *tmp;
	char *buf = *name;
	char *p;
	int len = 0;

	FUNC0(&dcache_lock);
	for (tmp = dentry ; tmp != root ; tmp = tmp->d_parent)
		len += tmp->d_name.len + 1;

	if (!len || --len > NAME_MAX) {
		FUNC1(&dcache_lock);
		return 0;
	}

	*(buf + len) = '\0';
	p = buf + len - dentry->d_name.len;
	FUNC2(p, dentry->d_name.name, dentry->d_name.len);

	for (tmp = dentry->d_parent; tmp != root ; tmp = tmp->d_parent) {
		*(--p) = '/';
		p -= tmp->d_name.len;
		FUNC2(p, tmp->d_name.name, tmp->d_name.len);
	}
	FUNC1(&dcache_lock);

	return len;
}