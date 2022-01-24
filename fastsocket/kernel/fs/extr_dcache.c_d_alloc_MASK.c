#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qstr {int len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_child; } ;
struct TYPE_4__ {char* name; int len; int /*<<< orphan*/  hash; } ;
struct dentry {char* d_iname; int /*<<< orphan*/  d_subdirs; TYPE_2__ d_u; int /*<<< orphan*/ * d_sb; int /*<<< orphan*/ * d_parent; int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_lru; int /*<<< orphan*/  d_hash; scalar_t__ d_mounted; int /*<<< orphan*/ * d_fsdata; int /*<<< orphan*/ * d_op; int /*<<< orphan*/ * d_inode; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_count; TYPE_1__ d_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_UNHASHED ; 
 int DNAME_INLINE_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  dentry_cache ; 
 TYPE_3__ dentry_stat ; 
 int /*<<< orphan*/ * FUNC3 (struct dentry*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC12(struct dentry * parent, const struct qstr *name)
{
	struct dentry *dentry;
	char *dname;

	dentry = FUNC5(dentry_cache, GFP_KERNEL);
	if (!dentry)
		return NULL;

	if (name->len > DNAME_INLINE_LEN-1) {
		dname = FUNC4(name->len + 1, GFP_KERNEL);
		if (!dname) {
			FUNC6(dentry_cache, dentry); 
			return NULL;
		}
	} else  {
		dname = dentry->d_iname;
	}	
	dentry->d_name.name = dname;

	dentry->d_name.len = name->len;
	dentry->d_name.hash = name->hash;
	FUNC8(dname, name->name, name->len);
	dname[name->len] = 0;

	FUNC2(&dentry->d_count, 1);
	dentry->d_flags = DCACHE_UNHASHED;
	FUNC10(&dentry->d_lock);
	dentry->d_inode = NULL;
	dentry->d_parent = NULL;
	dentry->d_sb = NULL;
	dentry->d_op = NULL;
	dentry->d_fsdata = NULL;
	dentry->d_mounted = 0;
	FUNC0(&dentry->d_hash);
	FUNC1(&dentry->d_lru);
	FUNC1(&dentry->d_subdirs);
	FUNC1(&dentry->d_alias);

	if (parent) {
		dentry->d_parent = FUNC3(parent);
		dentry->d_sb = parent->d_sb;
	} else {
		FUNC1(&dentry->d_u.d_child);
	}

	FUNC9(&dcache_lock);
	if (parent)
		FUNC7(&dentry->d_u.d_child, &parent->d_subdirs);
	dentry_stat.nr_dentry++;
	FUNC11(&dcache_lock);

	return dentry;
}