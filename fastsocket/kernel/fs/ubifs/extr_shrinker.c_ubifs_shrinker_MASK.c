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
struct shrinker {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  OLD_ZNODE_AGE ; 
 int /*<<< orphan*/  YOUNG_ZNODE_AGE ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 

int FUNC4(struct shrinker *shrink, int nr, gfp_t gfp_mask)
{
	int freed, contention = 0;
	long clean_zn_cnt = FUNC0(&ubifs_clean_zn_cnt);

	if (nr == 0)
		return clean_zn_cnt;

	if (!clean_zn_cnt) {
		/*
		 * No clean znodes, nothing to reap. All we can do in this case
		 * is to kick background threads to start commit, which will
		 * probably make clean znodes which, in turn, will be freeable.
		 * And we return -1 which means will make VM call us again
		 * later.
		 */
		FUNC1("no clean znodes, kick a thread");
		return FUNC2();
	}

	freed = FUNC3(nr, OLD_ZNODE_AGE, &contention);
	if (freed >= nr)
		goto out;

	FUNC1("not enough old znodes, try to free young ones");
	freed += FUNC3(nr - freed, YOUNG_ZNODE_AGE, &contention);
	if (freed >= nr)
		goto out;

	FUNC1("not enough young znodes, free all");
	freed += FUNC3(nr - freed, 0, &contention);

	if (!freed && contention) {
		FUNC1("freed nothing, but contention");
		return -1;
	}

out:
	FUNC1("%d znodes were freed, requested %d", freed, nr);
	return freed;
}