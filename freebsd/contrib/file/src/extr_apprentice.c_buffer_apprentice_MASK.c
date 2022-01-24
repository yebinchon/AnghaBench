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
struct mlist {int dummy; } ;
struct magic_set {int /*<<< orphan*/ ** mlist; } ;
struct magic_map {int dummy; } ;
struct magic {int dummy; } ;

/* Variables and functions */
 size_t MAGIC_SETS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct magic_map*,size_t) ; 
 struct magic_map* FUNC1 (struct magic_set*,struct magic*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct magic_set*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct magic_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct magic_set *ms, struct magic **bufs,
    size_t *sizes, size_t nbufs)
{
	size_t i, j;
	struct mlist *ml;
	struct magic_map *map;

	if (nbufs == 0)
		return -1;

	(void)FUNC3(ms, 0);

	FUNC4();

	for (i = 0; i < MAGIC_SETS; i++) {
		FUNC6(ms->mlist[i]);
		if ((ms->mlist[i] = FUNC5()) == NULL) {
			FUNC2(ms, sizeof(*ms->mlist[i]));
			goto fail;
		}
	}

	for (i = 0; i < nbufs; i++) {
		map = FUNC1(ms, bufs[i], sizes[i]);
		if (map == NULL)
			goto fail;

		for (j = 0; j < MAGIC_SETS; j++) {
			if (FUNC0(ms->mlist[j], map, j) == -1) {
				FUNC2(ms, sizeof(*ml));
				goto fail;
			}
		}
	}

	return 0;
fail:
	for (i = 0; i < MAGIC_SETS; i++) {
		FUNC6(ms->mlist[i]);
		ms->mlist[i] = NULL;
	}
	return -1;
}