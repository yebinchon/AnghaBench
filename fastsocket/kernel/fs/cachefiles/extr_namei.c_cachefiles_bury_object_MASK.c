#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__* d_inode; struct dentry* d_parent; TYPE_1__ d_name; } ;
struct cachefiles_cache {TYPE_5__* graveyard; int /*<<< orphan*/  gravecounter; } ;
struct TYPE_11__ {TYPE_4__* d_inode; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cachefiles_cache*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct cachefiles_cache*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 scalar_t__ FUNC12 () ; 
 struct dentry* FUNC13 (TYPE_5__*,struct dentry*) ; 
 struct dentry* FUNC14 (char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,struct dentry*) ; 
 int FUNC19 (TYPE_2__*,struct dentry*,TYPE_4__*,struct dentry*) ; 
 int FUNC20 (TYPE_2__*,struct dentry*) ; 

__attribute__((used)) static int FUNC21(struct cachefiles_cache *cache,
				  struct dentry *dir,
				  struct dentry *rep,
				  bool preemptive)
{
	struct dentry *grave, *trap;
	char nbuffer[8 + 8 + 1];
	int ret;

	FUNC4(",'%*.*s','%*.*s'",
	       dir->d_name.len, dir->d_name.len, dir->d_name.name,
	       rep->d_name.len, rep->d_name.len, rep->d_name.name);

	FUNC3("remove %p from %p", rep, dir);

	/* non-directories can just be unlinked */
	if (!FUNC2(rep->d_inode->i_mode)) {
		FUNC3("unlink stale object");
		ret = FUNC20(dir->d_inode, rep);

		if (preemptive)
			FUNC8(cache, rep);

		FUNC15(&dir->d_inode->i_mutex);

		if (ret == -EIO)
			FUNC7(cache, "Unlink failed");

		FUNC5(" = %d", ret);
		return ret;
	}

	/* directories have to be moved to the graveyard */
	FUNC3("move stale object to graveyard");
	FUNC15(&dir->d_inode->i_mutex);

try_again:
	/* first step is to make up a grave dentry in the graveyard */
	FUNC16(nbuffer, "%08x%08x",
		(uint32_t) FUNC12(),
		(uint32_t) FUNC6(&cache->gravecounter));

	/* do the multiway lock magic */
	trap = FUNC13(cache->graveyard, dir);

	/* do some checks before getting the grave dentry */
	if (rep->d_parent != dir) {
		/* the entry was probably culled when we dropped the parent dir
		 * lock */
		FUNC18(cache->graveyard, dir);
		FUNC5(" = 0 [culled?]");
		return 0;
	}

	if (!FUNC2(cache->graveyard->d_inode->i_mode)) {
		FUNC18(cache->graveyard, dir);
		FUNC7(cache, "Graveyard no longer a directory");
		return -EIO;
	}

	if (trap == rep) {
		FUNC18(cache->graveyard, dir);
		FUNC7(cache, "May not make directory loop");
		return -EIO;
	}

	if (FUNC10(rep)) {
		FUNC18(cache->graveyard, dir);
		FUNC7(cache, "Mountpoint in cache");
		return -EIO;
	}

	grave = FUNC14(nbuffer, cache->graveyard, FUNC17(nbuffer));
	if (FUNC0(grave)) {
		FUNC18(cache->graveyard, dir);

		if (FUNC1(grave) == -ENOMEM) {
			FUNC5(" = -ENOMEM");
			return -ENOMEM;
		}

		FUNC7(cache, "Lookup error %ld",
				    FUNC1(grave));
		return -EIO;
	}

	if (grave->d_inode) {
		FUNC18(cache->graveyard, dir);
		FUNC11(grave);
		grave = NULL;
		FUNC9();
		goto try_again;
	}

	if (FUNC10(grave)) {
		FUNC18(cache->graveyard, dir);
		FUNC11(grave);
		FUNC7(cache, "Mountpoint in graveyard");
		return -EIO;
	}

	/* target should not be an ancestor of source */
	if (trap == grave) {
		FUNC18(cache->graveyard, dir);
		FUNC11(grave);
		FUNC7(cache, "May not make directory loop");
		return -EIO;
	}

	/* attempt the rename */
	ret = FUNC19(dir->d_inode, rep, cache->graveyard->d_inode, grave);
	if (ret != 0 && ret != -ENOMEM)
		FUNC7(cache, "Rename failed with error %d", ret);

	if (preemptive)
		FUNC8(cache, rep);

	FUNC18(cache->graveyard, dir);
	FUNC11(grave);
	FUNC5(" = 0");
	return 0;
}