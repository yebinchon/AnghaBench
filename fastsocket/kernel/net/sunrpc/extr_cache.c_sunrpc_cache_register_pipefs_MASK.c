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
struct qstr {char const* name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dir; } ;
struct TYPE_4__ {TYPE_1__ pipefs; } ;
struct cache_detail {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct dentry*,struct qstr*,int /*<<< orphan*/ ,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_detail*) ; 

int FUNC7(struct dentry *parent,
				 const char *name, mode_t umode,
				 struct cache_detail *cd)
{
	struct qstr q;
	struct dentry *dir;
	int ret = 0;

	FUNC6(cd);
	q.name = name;
	q.len = FUNC4(name);
	q.hash = FUNC2(q.name, q.len);
	dir = FUNC3(parent, &q, umode, cd);
	if (!FUNC0(dir))
		cd->u.pipefs.dir = dir;
	else {
		FUNC5(cd);
		ret = FUNC1(dir);
	}
	return ret;
}