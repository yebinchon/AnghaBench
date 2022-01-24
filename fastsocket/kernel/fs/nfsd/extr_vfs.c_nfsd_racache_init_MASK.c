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
struct raparms {struct raparms* p_next; } ;
struct TYPE_4__ {int ra_size; } ;
struct TYPE_3__ {struct raparms* pb_head; int /*<<< orphan*/  pb_lock; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RAPARM_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct raparms* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ nfsdstats ; 
 TYPE_1__* raparm_hash ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(int cache_size)
{
	int	i;
	int	j = 0;
	int	nperbucket;
	struct raparms **raparm = NULL;


	if (raparm_hash[0].pb_head)
		return 0;
	nperbucket = FUNC0(cache_size, RAPARM_HASH_SIZE);
	if (nperbucket < 2)
		nperbucket = 2;
	cache_size = nperbucket * RAPARM_HASH_SIZE;

	FUNC1("nfsd: allocating %d readahead buffers.\n", cache_size);

	for (i = 0; i < RAPARM_HASH_SIZE; i++) {
		FUNC4(&raparm_hash[i].pb_lock);

		raparm = &raparm_hash[i].pb_head;
		for (j = 0; j < nperbucket; j++) {
			*raparm = FUNC2(sizeof(struct raparms), GFP_KERNEL);
			if (!*raparm)
				goto out_nomem;
			raparm = &(*raparm)->p_next;
		}
		*raparm = NULL;
	}

	nfsdstats.ra_size = cache_size;
	return 0;

out_nomem:
	FUNC1("nfsd: kmalloc failed, freeing readahead buffers\n");
	FUNC3();
	return -ENOMEM;
}