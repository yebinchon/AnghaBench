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
struct fscache_cache_tag {int /*<<< orphan*/  link; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fscache_cache_tag* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_addremove_sem ; 
 int /*<<< orphan*/  FUNC3 (struct fscache_cache_tag*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct fscache_cache_tag *tag)
{
	if (tag != FUNC0(-ENOMEM)) {
		FUNC2(&fscache_addremove_sem);

		if (FUNC1(&tag->usage))
			FUNC4(&tag->link);
		else
			tag = NULL;

		FUNC5(&fscache_addremove_sem);

		FUNC3(tag);
	}
}