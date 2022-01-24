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
struct fscache_cookie_def {int type; int /*<<< orphan*/ * name; int /*<<< orphan*/  get_key; } ;
struct fscache_cookie {int /*<<< orphan*/  n_children; struct fscache_cookie_def const* def; int /*<<< orphan*/  stores; scalar_t__ flags; void* netfs_data; struct fscache_cookie* parent; int /*<<< orphan*/  usage; int /*<<< orphan*/  n_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  FSCACHE_COOKIE_TYPE_DATAFILE 129 
#define  FSCACHE_COOKIE_TYPE_INDEX 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int __GFP_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  fscache_cookie_jar ; 
 int /*<<< orphan*/  fscache_n_acquires ; 
 int /*<<< orphan*/  fscache_n_acquires_nobufs ; 
 int /*<<< orphan*/  fscache_n_acquires_null ; 
 int /*<<< orphan*/  fscache_n_acquires_ok ; 
 int /*<<< orphan*/  fscache_n_acquires_oom ; 
 int /*<<< orphan*/  fscache_n_cookie_data ; 
 int /*<<< orphan*/  fscache_n_cookie_index ; 
 int /*<<< orphan*/  fscache_n_cookie_special ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct fscache_cookie* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct fscache_cookie *FUNC11(
	struct fscache_cookie *parent,
	const struct fscache_cookie_def *def,
	void *netfs_data)
{
	struct fscache_cookie *cookie;

	FUNC0(!def);

	FUNC3("{%s},{%s},%p",
	       parent ? (char *) parent->def->name : "<no-parent>",
	       def->name, netfs_data);

	FUNC9(&fscache_n_acquires);

	/* if there's no parent cookie, then we don't create one here either */
	if (!parent) {
		FUNC9(&fscache_n_acquires_null);
		FUNC4(" [no parent]");
		return NULL;
	}

	/* validate the definition */
	FUNC0(!def->get_key);
	FUNC0(!def->name[0]);

	FUNC0(def->type == FSCACHE_COOKIE_TYPE_INDEX &&
	       parent->def->type != FSCACHE_COOKIE_TYPE_INDEX);

	/* allocate and initialise a cookie */
	cookie = FUNC10(fscache_cookie_jar, GFP_KERNEL);
	if (!cookie) {
		FUNC9(&fscache_n_acquires_oom);
		FUNC4(" [ENOMEM]");
		return NULL;
	}

	FUNC7(&cookie->usage, 1);
	FUNC7(&cookie->n_children, 0);

	/* We keep the active count elevated until relinquishment to prevent an
	 * attempt to wake up every time the object operations queue quiesces.
	 */
	FUNC7(&cookie->n_active, 1);

	FUNC6(&parent->usage);
	FUNC6(&parent->n_children);

	cookie->def		= def;
	cookie->parent		= parent;
	cookie->netfs_data	= netfs_data;
	cookie->flags		= 0;

	/* radix tree insertion won't use the preallocation pool unless it's
	 * told it may not wait */
	FUNC1(&cookie->stores, GFP_NOFS & ~__GFP_WAIT);

	switch (cookie->def->type) {
	case FSCACHE_COOKIE_TYPE_INDEX:
		FUNC9(&fscache_n_cookie_index);
		break;
	case FSCACHE_COOKIE_TYPE_DATAFILE:
		FUNC9(&fscache_n_cookie_data);
		break;
	default:
		FUNC9(&fscache_n_cookie_special);
		break;
	}

	/* if the object is an index then we need do nothing more here - we
	 * create indices on disk when we need them as an index may exist in
	 * multiple caches */
	if (cookie->def->type != FSCACHE_COOKIE_TYPE_INDEX) {
		if (FUNC8(cookie) < 0) {
			FUNC5(&parent->n_children);
			FUNC2(cookie);
			FUNC9(&fscache_n_acquires_nobufs);
			FUNC4(" = NULL");
			return NULL;
		}
	}

	FUNC9(&fscache_n_acquires_ok);
	FUNC4(" = %p", cookie);
	return cookie;
}