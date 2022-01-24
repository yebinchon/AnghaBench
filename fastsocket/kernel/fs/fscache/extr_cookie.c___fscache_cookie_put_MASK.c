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
struct fscache_cookie {int /*<<< orphan*/  usage; int /*<<< orphan*/  backing_objects; struct fscache_cookie* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_cookie_jar ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct fscache_cookie*) ; 

void FUNC8(struct fscache_cookie *cookie)
{
	struct fscache_cookie *parent;

	FUNC2("%p", cookie);

	for (;;) {
		FUNC1("FREE COOKIE %p", cookie);
		parent = cookie->parent;
		FUNC0(!FUNC6(&cookie->backing_objects));
		FUNC7(fscache_cookie_jar, cookie);

		if (!parent)
			break;

		cookie = parent;
		FUNC0(FUNC5(&cookie->usage) <= 0);
		if (!FUNC4(&cookie->usage))
			break;
	}

	FUNC3("");
}