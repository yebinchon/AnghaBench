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
struct errormap {int /*<<< orphan*/  list; int /*<<< orphan*/  namelen; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ERRHASHSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct errormap* errmap ; 
 int /*<<< orphan*/ * hash_errmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	struct errormap *c;
	int bucket;

	/* initialize hash table */
	for (bucket = 0; bucket < ERRHASHSZ; bucket++)
		FUNC0(&hash_errmap[bucket]);

	/* load initial error map into hash table */
	for (c = errmap; c->name != NULL; c++) {
		c->namelen = FUNC4(c->name);
		bucket = FUNC3(c->name, c->namelen, 0) % ERRHASHSZ;
		FUNC1(&c->list);
		FUNC2(&c->list, &hash_errmap[bucket]);
	}

	return 1;
}