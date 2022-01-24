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
struct fscache_cookie {int /*<<< orphan*/  backing_objects; int /*<<< orphan*/  stores_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_cookie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *_cookie)
{
	struct fscache_cookie *cookie = _cookie;

	FUNC1(cookie, 0, sizeof(*cookie));
	FUNC2(&cookie->lock);
	FUNC2(&cookie->stores_lock);
	FUNC0(&cookie->backing_objects);
}