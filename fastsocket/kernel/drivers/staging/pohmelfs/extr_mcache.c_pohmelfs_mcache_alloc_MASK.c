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
typedef  int /*<<< orphan*/  u64 ;
struct pohmelfs_sb {int /*<<< orphan*/  mcache_lock; int /*<<< orphan*/  mcache_gen; } ;
struct pohmelfs_mcache {unsigned int size; int /*<<< orphan*/  gen; int /*<<< orphan*/  start; void* data; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  err; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct pohmelfs_mcache* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pohmelfs_mcache* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pohmelfs_mcache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pohmelfs_sb*,struct pohmelfs_mcache*) ; 
 int /*<<< orphan*/  pohmelfs_mcache_pool ; 

struct pohmelfs_mcache *FUNC9(struct pohmelfs_sb *psb, u64 start,
		unsigned int size, void *data)
{
	struct pohmelfs_mcache *m;
	int err = -ENOMEM;

	m = FUNC4(pohmelfs_mcache_pool, GFP_KERNEL);
	if (!m)
		goto err_out_exit;

	FUNC3(&m->complete);
	m->err = 0;
	FUNC2(&m->refcnt, 1);
	m->data = data;
	m->start = start;
	m->size = size;
	m->gen = FUNC1(&psb->mcache_gen);

	FUNC6(&psb->mcache_lock);
	err = FUNC8(psb, m);
	FUNC7(&psb->mcache_lock);
	if (err)
		goto err_out_free;

	return m;

err_out_free:
	FUNC5(m, pohmelfs_mcache_pool);
err_out_exit:
	return FUNC0(err);
}